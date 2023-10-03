export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIBuddyController.lua")
  cbox:RegisterBox("domino/System/AIBuddyMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/ProfilerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/S15M010.MyWorldObjectMonitorController.debug.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/Library/common/MissionFlow.Restore_Mission_SubObjectives.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15_m010_cin_dropthebaby.S15_M010_CIN_DropTheBaby_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15m010_scr.S15M010_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/System/TeleportEntity.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/Library/common/Vehicle.Vehicle_Failure.debug.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingMonitor.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S15M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main"
  self.PlayerEntity = nil
  self.DriveAndTtalkVehicle = nil
  self.Vehicle_State = 0
  self.WJR = nil
  self.Wrench = nil
  self.DriveAndTalkVehicle_Checkpoint1 = nil
  self.Access_Code_AI_1 = nil
  self.Access_Code_AI_2 = nil
  self.Aquarium_Doors_Open_Wrench = {}
  self.WrenchJR_PlantEMP = nil
  self.Aquarium = ""
  self.TempInteractEntity = nil
  self.Entity_InteractOpenDoor = "9223372059919152320"
  self.Josh = nil
  self.Wrench_PostCin = nil
  self.WrenchJr_Garage_Door = {}
  self.box_MissionMessageController_v3_30 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_30
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|9355942"
  l0.Out = self.f_box_MissionMessageController_v3_30_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_8 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_8
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|21682181"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_S15M010_SCR_Main_3 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15m010_scr.S15M010_SCR_Main.debug.lua")
  l0 = self.box_S15M010_SCR_Main_3
  l0._graph = self
  l0._name = "box_S15M010_SCR_Main_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|49912145"
  l0.Out_Annotations = DummyFunction
  l0.SCR_ConveyorBelt_Out = DummyFunction
  l0.SCR_RobotHeadTalking_Out = DummyFunction
  l0.SCR_RobotMoving_Out = DummyFunction
  self.box_S15_M010_CIN_DropTheBaby_Main_13 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15_m010_cin_dropthebaby.S15_M010_CIN_DropTheBaby_Main.debug.lua")
  l0 = self.box_S15_M010_CIN_DropTheBaby_Main_13
  l0._graph = self
  l0._name = "box_S15_M010_CIN_DropTheBaby_Main_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|56136185"
  l0.Out = self.f_box_S15_M010_CIN_DropTheBaby_Main_13_Out
  self.box_MissionController_v4_173 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_173
  l0._graph = self
  l0._name = "box_MissionController_v4_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|68064596"
  self.box_Mission_End_28 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_28
  l0._graph = self
  l0._name = "box_Mission_End_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|70787791"
  self.box_Timer_v2_186 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_186
  l0._graph = self
  l0._name = "box_Timer_v2_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|134468721"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_186_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PGTController_v2_34 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_34
  l0._graph = self
  l0._name = "box_PGTController_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|157287565"
  l0.Started = self.f_box_PGTController_v2_34_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|161092094"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_MultipleOR_48 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_48
  l0._graph = self
  l0._name = "box_MultipleOR_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|162325139"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_48_Out
  self.box_VehicleSeatingController_141 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_141
  l0._graph = self
  l0._name = "box_VehicleSeatingController_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|164893183"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_box_VehicleSeatingController_141_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_AI_Buddy_Controller_154 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_154
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|174176908"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_box_AI_Buddy_Controller_154_IsWaiting
  l0.Assigned = DummyFunction
  self.box_PhoneCommunicationController_95 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_95
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|180931584"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_95_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Escape_Gameplay_19 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_19
  l0._graph = self
  l0._name = "box_Escape_Gameplay_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|206160249"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Escape_Gameplay_19_Stopped
  l0.Escaped = self.f_box_Escape_Gameplay_19_Escaped
  l0.LeftArea = self.f_box_Escape_Gameplay_19_LeftArea
  self.box_Multiple_AND_148 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_148
  l0._graph = self
  l0._name = "box_Multiple_AND_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|207494614"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_148_Out
  self.box_HackableController_v2_118 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_118
  l0._graph = self
  l0._name = "box_HackableController_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|209427904"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MyWorldObjectMonitorController_126 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/S15M010.MyWorldObjectMonitorController.debug.lua")
  l0 = self.box_MyWorldObjectMonitorController_126
  l0._graph = self
  l0._name = "box_MyWorldObjectMonitorController_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|223478839"
  self.box_Security_Camera_Monitor_112 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_112
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|226077460"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_112_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_UnspawnController_36 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_36
  l0._graph = self
  l0._name = "box_UnspawnController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|228779035"
  l0.EntityUnspawned = self.f_box_UnspawnController_36_EntityUnspawned
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|259692234"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_AI_Buddy_Monitor_171 = cbox:CreateBox("domino/System/AIBuddyMonitor.lua")
  l0 = self.box_AI_Buddy_Monitor_171
  l0._graph = self
  l0._name = "box_AI_Buddy_Monitor_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|291211640"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnBuddyFollowing = DummyFunction
  l0.OnBuddyInCombat = DummyFunction
  l0.OnBuddyHasNoSeat = DummyFunction
  l0.OnBuddyCantReach = DummyFunction
  l0.OnBuddyNormalRange = DummyFunction
  l0.OnBuddyTooFarBarkRange = DummyFunction
  l0.OnBuddyTooFar = DummyFunction
  l0.OnBuddyTooFarUnspawnRange = self.f_box_AI_Buddy_Monitor_171_OnBuddyTooFarUnspawnRange
  self.box_MultipleOR_128 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_128
  l0._graph = self
  l0._name = "box_MultipleOR_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|313856770"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_128_Out
  self.box_HackableController_v2_193 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_193
  l0._graph = self
  l0._name = "box_HackableController_v2_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|319730710"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_193_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_99 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_99
  l0._graph = self
  l0._name = "box_Timer_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|337702823"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_99_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_113 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_113
  l0._graph = self
  l0._name = "box_CLOController_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|349706095"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_113_OnUserInPlace
  self.box_LMA_Layer_Controller_25 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_25
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|375031775"
  l0.Loaded = self.f_box_LMA_Layer_Controller_25_Loaded
  l0.Unloaded = DummyFunction
  self.box_PGTController_v2_24 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_24
  l0._graph = self
  l0._name = "box_PGTController_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|380988353"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_24_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Interact_Gameplay_39 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_39
  l0._graph = self
  l0._name = "box_Interact_Gameplay_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|409444550"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_39_Interacted
  self.box_MissionMessageController_v3_71 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_71
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|461156872"
  l0.Out = self.f_box_MissionMessageController_v3_71_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_91 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_91
  l0._graph = self
  l0._name = "box_MultipleOR_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|466700732"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_91_Out
  self.box_PhoneCommunicationController_11 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_11
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|485426646"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_11_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_86 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_86
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|488472332"
  l0.Out = self.f_box_MissionCheckpointReach_86_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Interact_Gameplay_16 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_16
  l0._graph = self
  l0._name = "box_Interact_Gameplay_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|547195599"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_16_Interacted
  self.box_Delivery_Gameplay_23 = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  l0 = self.box_Delivery_Gameplay_23
  l0._graph = self
  l0._name = "box_Delivery_Gameplay_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|554536366"
  l0.Started = self.f_box_Delivery_Gameplay_23_Started
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_box_Delivery_Gameplay_23_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = self.f_box_Delivery_Gameplay_23_VehicleForceStopped
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self.box_CLOController_57 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_57
  l0._graph = self
  l0._name = "box_CLOController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|584539125"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_57_OnUserInPlace
  self.box_CLOController_144 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_144
  l0._graph = self
  l0._name = "box_CLOController_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|613566009"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_144_OnUserInPlace
  self.box_CinematicPrep_84 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_84
  l0._graph = self
  l0._name = "box_CinematicPrep_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|625747097"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_84_PostOut
  self.box_TriggerMonitor_v2_175 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_175
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|639497149"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_175_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_175_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|639987022"
  l0.Out = self.f_box_MissionMessageController_v3_10_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_123 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_123
  l0._graph = self
  l0._name = "box_MultipleOR_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|641445076"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_123_Out
  self.box_Restore_Mission_SubObjectives_134 = cbox:CreateBox("domino/Library/common/MissionFlow.Restore_Mission_SubObjectives.debug.lua")
  l0 = self.box_Restore_Mission_SubObjectives_134
  l0._graph = self
  l0._name = "box_Restore_Mission_SubObjectives_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|659956301"
  l0.Restored = self.f_box_Restore_Mission_SubObjectives_134_Restored
  self.box_S15M010_SCR_Main_32 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15m010_scr.S15M010_SCR_Main.debug.lua")
  l0 = self.box_S15M010_SCR_Main_32
  l0._graph = self
  l0._name = "box_S15M010_SCR_Main_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|701998741"
  l0.Out_Annotations = DummyFunction
  l0.SCR_ConveyorBelt_Out = DummyFunction
  l0.SCR_RobotHeadTalking_Out = DummyFunction
  l0.SCR_RobotMoving_Out = DummyFunction
  self.box_PGTController_v2_77 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_77
  l0._graph = self
  l0._name = "box_PGTController_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|711611172"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_77_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Interact_Gameplay_38 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_38
  l0._graph = self
  l0._name = "box_Interact_Gameplay_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|722956409"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_38_Interacted
  self.box_MultipleOR_52 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_52
  l0._graph = self
  l0._name = "box_MultipleOR_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|731795347"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_52_Out
  self.box_MissionMessageController_v3_79 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_79
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|732345423"
  l0.Out = self.f_box_MissionMessageController_v3_79_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_143 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_143
  l0._graph = self
  l0._name = "box_CLOController_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|745941484"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_143_OnUserInPlace
  self.box_MultipleOR_90 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_90
  l0._graph = self
  l0._name = "box_MultipleOR_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|774426580"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_90_Out
  self.box_UnspawnController_40 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_40
  l0._graph = self
  l0._name = "box_UnspawnController_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|807341740"
  l0.EntityUnspawned = self.f_box_UnspawnController_40_EntityUnspawned
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self.box_HackableController_v2_65 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_65
  l0._graph = self
  l0._name = "box_HackableController_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|840395132"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Network_Surfing_Controller_180 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_180
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|856901614"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_180_Deactivated
  self.box_HackableController_v2_205 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_205
  l0._graph = self
  l0._name = "box_HackableController_v2_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|872441068"
  l0.Enabled = self.f_box_HackableController_v2_205_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_205_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_169 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_169
  l0._graph = self
  l0._name = "box_OnceOnly_v3_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|896977876"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_169_Out
  l0.ResetOut = DummyFunction
  self.box_HackableController_v2_195 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_195
  l0._graph = self
  l0._name = "box_HackableController_v2_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|919154371"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_195_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_VehicleSeatingController_157 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_157
  l0._graph = self
  l0._name = "box_VehicleSeatingController_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|926848981"
  l0.Assigned = self.f_box_VehicleSeatingController_157_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Teleport_Entity_46 = cbox:CreateBox("domino/System/TeleportEntity.lua")
  l0 = self.box_Teleport_Entity_46
  l0._graph = self
  l0._name = "box_Teleport_Entity_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|932904711"
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_Entity_46_TeleportDone
  self.box_CinematicPrep_89 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_89
  l0._graph = self
  l0._name = "box_CinematicPrep_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|936479437"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_89_PostOut
  self.box_PawnHealthMonitor_v3_129 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_129
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|974779915"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_129_Enabled
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_129_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_PlaySequence_v5_27 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_27
  l0._graph = self
  l0._name = "box_PlaySequence_v5_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|982322787"
  l0._DynamicAnchors = {
    EntityIn = {"Wrench_Var"},
    EntityOut = {"Wrench_Var"},
    SPOut = {"OutOfCam"}
  }
  l0.Started = self.f_box_PlaySequence_v5_27_Started
  l0.Stopped = self.f_box_PlaySequence_v5_27_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_27_Finished
  l0.SPOut.OutOfCam = self.f_box_PlaySequence_v5_27_SPOut__OutOfCam_
  self.box_OnceOnly_v3_18 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_18
  l0._graph = self
  l0._name = "box_OnceOnly_v3_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1048534756"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_18_Out
  l0.ResetOut = DummyFunction
  self.box_S15M010_SCR_Main_20 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15m010_scr.S15M010_SCR_Main.debug.lua")
  l0 = self.box_S15M010_SCR_Main_20
  l0._graph = self
  l0._name = "box_S15M010_SCR_Main_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1052801530"
  l0.Out_Annotations = DummyFunction
  l0.SCR_ConveyorBelt_Out = DummyFunction
  l0.SCR_RobotHeadTalking_Out = DummyFunction
  l0.SCR_RobotMoving_Out = DummyFunction
  self.box_AI_Buddy_Controller_4 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_4
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1095396224"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_box_AI_Buddy_Controller_4_IsWaiting
  l0.Assigned = DummyFunction
  self.box_CinematicPrep_159 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_159
  l0._graph = self
  l0._name = "box_CinematicPrep_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1095742741"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_159_PostOut
  self.box_MissionLayer_v2_88 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_88
  l0._graph = self
  l0._name = "box_MissionLayer_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1138287074"
  l0.Loaded = self.f_box_MissionLayer_v2_88_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_AI_Buddy_Controller_124 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_124
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1191932711"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self.box_CLOController_9 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_9
  l0._graph = self
  l0._name = "box_CLOController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1202630787"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_9_OnUserInPlace
  self.box_CLOController_35 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_35
  l0._graph = self
  l0._name = "box_CLOController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1204552044"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_35_OnUserInPlace
  self.box_MultipleOR_98 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_98
  l0._graph = self
  l0._name = "box_MultipleOR_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1244723980"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_98_Out
  self.box_MissionMessageController_v3_72 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_72
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1245729738"
  l0.Out = self.f_box_MissionMessageController_v3_72_Out
  l0.MessageCompleted = DummyFunction
  self.box_S15M010_SCR_Main_104 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15m010_scr.S15M010_SCR_Main.debug.lua")
  l0 = self.box_S15M010_SCR_Main_104
  l0._graph = self
  l0._name = "box_S15M010_SCR_Main_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1247239262"
  l0.Out_Annotations = DummyFunction
  l0.SCR_ConveyorBelt_Out = DummyFunction
  l0.SCR_RobotHeadTalking_Out = DummyFunction
  l0.SCR_RobotMoving_Out = DummyFunction
  self.box_MissionCheckpointReach_80 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_80
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1250334140"
  l0.Out = self.f_box_MissionCheckpointReach_80_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Teleport_Entity_185 = cbox:CreateBox("domino/System/TeleportEntity.lua")
  l0 = self.box_Teleport_Entity_185
  l0._graph = self
  l0._name = "box_Teleport_Entity_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1270884673"
  l0.Out = DummyFunction
  l0.TeleportDone = DummyFunction
  self.box_Player_Proximity_Monitor_109 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_109
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1293947338"
  l0.Enabled = self.f_box_Player_Proximity_Monitor_109_Enabled
  l0.Disabled = self.f_box_Player_Proximity_Monitor_109_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_109_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_Control_the_profiling_capabilities_of_a_player_64 = cbox:CreateBox("domino/System/ProfilerController.lua")
  l0 = self.box_Control_the_profiling_capabilities_of_a_player_64
  l0._graph = self
  l0._name = "box_Control_the_profiling_capabilities_of_a_player_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1300525442"
  l0.ProfilerSetOn = DummyFunction
  l0.ProfilerSetOff = DummyFunction
  l0.ProfilerDisabled = DummyFunction
  l0.ProfilerReenabled = DummyFunction
  l0.AutoActivationInCamerasDisabled = DummyFunction
  l0.AutoActivationInCamerasReenabled = DummyFunction
  self.box_MissionZone_74 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_74
  l0._graph = self
  l0._name = "box_MissionZone_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1328603685"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_AI_Buddy_Controller_155 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_155
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1337556785"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_box_AI_Buddy_Controller_155_IsWaiting
  l0.Assigned = DummyFunction
  self.box_MultipleOR_178 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_178
  l0._graph = self
  l0._name = "box_MultipleOR_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1342973578"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_178_Out
  self.box_DriveAndTalk_43 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_43
  l0._graph = self
  l0._name = "box_DriveAndTalk_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1345313367"
  l0.Started = self.f_box_DriveAndTalk_43_Started
  l0.Stopped = self.f_box_DriveAndTalk_43_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_43_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_SwitchOutput_v3_97 = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_97
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1348230054"
  l0._DynamicAnchors = {Output = 3}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_97_Output_0
  l0.Output[1] = self.f_box_SwitchOutput_v3_97_Output_1
  l0.Output[2] = self.f_box_SwitchOutput_v3_97_Output_2
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_HackableController_v2_196 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_196
  l0._graph = self
  l0._name = "box_HackableController_v2_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1348742616"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_196_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_69 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_69
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1399369331"
  l0.Out = self.f_box_MissionMessageController_v3_69_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_75 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_75
  l0._graph = self
  l0._name = "box_MissionLayer_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1406557276"
  l0.Loaded = self.f_box_MissionLayer_v2_75_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S15M010_SCR_Main_55 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15m010_scr.S15M010_SCR_Main.debug.lua")
  l0 = self.box_S15M010_SCR_Main_55
  l0._graph = self
  l0._name = "box_S15M010_SCR_Main_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1412289057"
  l0.Out_Annotations = DummyFunction
  l0.SCR_ConveyorBelt_Out = DummyFunction
  l0.SCR_RobotHeadTalking_Out = DummyFunction
  l0.SCR_RobotMoving_Out = DummyFunction
  self.box_MultipleOR_101 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_101
  l0._graph = self
  l0._name = "box_MultipleOR_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1415506413"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_101_Out
  self.box_VehicleSeatingController_92 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_92
  l0._graph = self
  l0._name = "box_VehicleSeatingController_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1415507354"
  l0.Assigned = self.f_box_VehicleSeatingController_92_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_85 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_85
  l0._graph = self
  l0._name = "box_MissionLayer_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1448222860"
  l0.Loaded = self.f_box_MissionLayer_v2_85_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S15M010_SCR_Main_108 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15m010_scr.S15M010_SCR_Main.debug.lua")
  l0 = self.box_S15M010_SCR_Main_108
  l0._graph = self
  l0._name = "box_S15M010_SCR_Main_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1452860087"
  l0.Out_Annotations = DummyFunction
  l0.SCR_ConveyorBelt_Out = DummyFunction
  l0.SCR_RobotHeadTalking_Out = DummyFunction
  l0.SCR_RobotMoving_Out = DummyFunction
  self.box_VehicleSeatingController_54 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_54
  l0._graph = self
  l0._name = "box_VehicleSeatingController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1467316374"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_54_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_S15M010_SCR_Main_105 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15m010_scr.S15M010_SCR_Main.debug.lua")
  l0 = self.box_S15M010_SCR_Main_105
  l0._graph = self
  l0._name = "box_S15M010_SCR_Main_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1484275484"
  l0.Out_Annotations = DummyFunction
  l0.SCR_ConveyorBelt_Out = DummyFunction
  l0.SCR_RobotHeadTalking_Out = DummyFunction
  l0.SCR_RobotMoving_Out = DummyFunction
  self.box_HackableController_v2_31 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_31
  l0._graph = self
  l0._name = "box_HackableController_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1512786460"
  l0.Enabled = self.f_box_HackableController_v2_31_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionController_v4_130 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_130
  l0._graph = self
  l0._name = "box_MissionController_v4_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1528207827"
  self.box_MissionMessageController_v3_26 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_26
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1534988300"
  l0.Out = self.f_box_MissionMessageController_v3_26_Out
  l0.MessageCompleted = DummyFunction
  self.box_S15M010_SCR_Main_107 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15m010_scr.S15M010_SCR_Main.debug.lua")
  l0 = self.box_S15M010_SCR_Main_107
  l0._graph = self
  l0._name = "box_S15M010_SCR_Main_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1570962001"
  l0.Out_Annotations = DummyFunction
  l0.SCR_ConveyorBelt_Out = DummyFunction
  l0.SCR_RobotHeadTalking_Out = DummyFunction
  l0.SCR_RobotMoving_Out = DummyFunction
  self.box_Interact_Gameplay_37 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_37
  l0._graph = self
  l0._name = "box_Interact_Gameplay_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1633859920"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_37_Interacted
  self.box_LMA_Layer_Controller_42 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_42
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1687078428"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_OnceOnly_v3_111 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_111
  l0._graph = self
  l0._name = "box_OnceOnly_v3_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1710138589"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_111_Out
  l0.ResetOut = DummyFunction
  self.box_MissionCheckpointReach_81 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_81
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1737225600"
  l0.Out = self.f_box_MissionCheckpointReach_81_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PhoneCommunicationController_62 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_62
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1740159936"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_62_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_InteractionScriptMonitor_v2_70 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_70
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1757553375"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = self.f_box_InteractionScriptMonitor_v2_70_AnimationStarted
  l0.AnimationFinished = DummyFunction
  self.box_MultipleOR_147 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_147
  l0._graph = self
  l0._name = "box_MultipleOR_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1764655213"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_147_Out
  self.box_Network_Surfing_Controller_181 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_181
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1771902579"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_181_Deactivated
  self.box_Interact_Gameplay_22 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_22
  l0._graph = self
  l0._name = "box_Interact_Gameplay_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1777852273"
  l0.Started = self.f_box_Interact_Gameplay_22_Started
  l0.Stopped = self.f_box_Interact_Gameplay_22_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_22_Interacted
  self.box_MultipleOR_177 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_177
  l0._graph = self
  l0._name = "box_MultipleOR_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1790842793"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_177_Out
  self.box_HackableController_v2_194 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_194
  l0._graph = self
  l0._name = "box_HackableController_v2_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1803128523"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_194_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_82 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_82
  l0._graph = self
  l0._name = "box_MultipleOR_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1843112130"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_82_Out
  self.box_InteractionScriptMonitor_v2_182 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_182
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1908861754"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_182_Disabled
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_182_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = self.f_box_InteractionScriptMonitor_v2_182_AnimationStarted
  l0.AnimationFinished = DummyFunction
  self.box_S15M010_SCR_Main_56 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15m010_scr.S15M010_SCR_Main.debug.lua")
  l0 = self.box_S15M010_SCR_Main_56
  l0._graph = self
  l0._name = "box_S15M010_SCR_Main_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1925977630"
  l0.Out_Annotations = DummyFunction
  l0.SCR_ConveyorBelt_Out = DummyFunction
  l0.SCR_RobotHeadTalking_Out = DummyFunction
  l0.SCR_RobotMoving_Out = DummyFunction
  self.box_AI_Buddy_Controller_161 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_161
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2000550611"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = self.f_box_AI_Buddy_Controller_161_IsFollowing
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self.box_S15M010_SCR_Main_103 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S15/S15M010/s15m010_scr.S15M010_SCR_Main.debug.lua")
  l0 = self.box_S15M010_SCR_Main_103
  l0._graph = self
  l0._name = "box_S15M010_SCR_Main_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2090809393"
  l0.Out_Annotations = DummyFunction
  l0.SCR_ConveyorBelt_Out = DummyFunction
  l0.SCR_RobotHeadTalking_Out = DummyFunction
  l0.SCR_RobotMoving_Out = DummyFunction
  self.box_HackableController_v2_45 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_45
  l0._graph = self
  l0._name = "box_HackableController_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2108128265"
  l0.Enabled = self.f_box_HackableController_v2_45_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Vehicle_Failure_12 = cbox:CreateBox("domino/Library/common/Vehicle.Vehicle_Failure.debug.lua")
  l0 = self.box_Vehicle_Failure_12
  l0._graph = self
  l0._name = "box_Vehicle_Failure_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2144869031"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Fail = DummyFunction
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
  l0 = self.box_MissionLayer_v2_75
  l0.LayerName = "S15M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2127618947", "2127618947", "S15M010_Main", "CheckPoint_0", "box_MissionLayer_v2_75.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_85
  l0.LayerName = "S15M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|641441312", "641441312", "S15M010_Main", "CheckPoint_1", "box_MissionLayer_v2_85.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_88
  l0.LayerName = "S15M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|220436032", "220436032", "S15M010_Main", "CheckPoint_2", "box_MissionLayer_v2_88.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_28()
  l0 = self.box_Mission_End_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1827211870", "1827211870", "S15M010_Main", "CheckPoint_3", "box_Mission_End_28.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S15M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1104553538", "1104553538", "S15M010_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionMessageController_v3_30_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Escape_Gameplay_19()
  l0 = self.box_MissionMessageController_v3_30
  l1 = self.box_Escape_Gameplay_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1221269947", "1221269947", "S15M010_Main", "box_MissionMessageController_v3_30.Out", "box_Escape_Gameplay_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_127_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1990161980"
  l0.Out = self.f_box_Simple_Node_133_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1139724172", "1139724172", "S15M010_Main", "box_Ordered_Output_127.Out", "box_Simple_Node_133.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_127_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_84
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1437871385", "1437871385", "S15M010_Main", "box_Ordered_Output_127.Out", "box_CinematicPrep_84.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_127_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|623720454", "623720454", "S15M010_Main", "box_Ordered_Output_127.Out", "box_MultipleOR_48.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_127_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1163251424"
  l0.Out = self.f_box_Simple_Node_146_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1104407454", "1104407454", "S15M010_Main", "box_Ordered_Output_127.Out", "box_Simple_Node_146.In", clone, l0)
  l0:In()
end
function export:f_box_InteractionScriptController_164_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046758922553"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1917454711"
  l0.Enabled = self.f_box_InteractionScriptController_163_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1856580734", "1856580734", "S15M010_Main", "box_InteractionScriptController_164.Enabled", "box_InteractionScriptController_163.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_S15_M010_CIN_DropTheBaby_Main_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S15_M010_CIN_DropTheBaby_Main_13
  l1 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|799579493", "799579493", "S15M010_Main", "box_S15_M010_CIN_DropTheBaby_Main_13.Out", "box_MultipleOR_52.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_94_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_22()
  l0 = self.box_Interact_Gameplay_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|525580276", "525580276", "S15M010_Main", "box_Ordered_Output_94.Out", "box_Interact_Gameplay_22.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_94_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_50()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|400072495", "400072495", "S15M010_Main", "box_Ordered_Output_94.Out", "box_VisibilityController_v2_50.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_183_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_22()
  l0 = self.box_Interact_Gameplay_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1650680670", "1650680670", "S15M010_Main", "box_Ordered_Output_183.Out", "box_Interact_Gameplay_22.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_183_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_182()
  l0 = self.box_InteractionScriptMonitor_v2_182
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1444811403", "1444811403", "S15M010_Main", "box_Ordered_Output_183.Out", "box_InteractionScriptMonitor_v2_182.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_31
  l0.HackableEntity = "9223372056229363311"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1663803062", "1663803062", "S15M010_Main", "box_Ordered_Output_51.Out", "box_HackableController_v2_31.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_Ordered_Output_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_41()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|840309665", "840309665", "S15M010_Main", "box_Ordered_Output_51.Out", "box_SecurityCamController_41.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_Timer_v2_186_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_27()
  l0 = self.box_Timer_v2_186
  l1 = self.box_PlaySequence_v5_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1614738593", "1614738593", "S15M010_Main", "box_Timer_v2_186.TimeElapsed", "box_PlaySequence_v5_27.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_PGTController_v2_34_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1505512578"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_158_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_PGTController_v2_34
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|82298068", "82298068", "S15M010_Main", "box_PGTController_v2_34.Started", "box_SetActionMap_v2_158.Push", l0, l1)
  l1:Push()
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_5
  l1 = self.box_SwitchOutput_v3_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|482345238", "482345238", "S15M010_Main", "box_MultipleOR_5.Out", "box_SwitchOutput_v3_97.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_48_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_91()
  l0 = self.box_MultipleOR_48
  l1 = self.box_MultipleOR_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|885856769", "885856769", "S15M010_Main", "box_MultipleOR_48.Out", "box_MultipleOR_91.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VehicleSeatingController_141_UnassignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_178()
  l0 = self.box_VehicleSeatingController_141
  l1 = self.box_MultipleOR_178
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1410757724", "1410757724", "S15M010_Main", "box_VehicleSeatingController_141.UnassignCompleted", "box_MultipleOR_178.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Vehicle_Controller_142_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.DriveAndTtalkVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1232703572"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = self.f_box_Vehicle_Controller_14_Unmovable
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1564384644", "1564384644", "S15M010_Main", "box_Vehicle_Controller_142.Unusable", "box_Vehicle_Controller_14.SetAsUnmovable", clone, l0)
  l0:SetAsUnmovable()
end
function export:f_box_AI_Buddy_Controller_154_IsWaiting()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.DriveAndTtalkVehicle
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1624909728"
  l0._DynamicAnchors = {HackCategoryType = 2}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_box_DPad_Hackable_Controller_198_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0 = self.box_AI_Buddy_Controller_154
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1436239863", "1436239863", "S15M010_Main", "box_AI_Buddy_Controller_154.IsWaiting", "box_DPad_Hackable_Controller_198.RemoveAll", l0, l1)
  l1:RemoveAll()
end
function export:f_box_PhoneCommunicationController_95_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1071418922"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_106_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_106_Out_1
  l0 = self.box_PhoneCommunicationController_95
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|24342551", "24342551", "S15M010_Main", "box_PhoneCommunicationController_95.OnCommunicationStarted", "box_Ordered_Output_106.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_102_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Restore_Mission_SubObjectives_134
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "Objective",
    id = "693241"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective015",
    item = "Objective",
    id = "355343"
  }
  l0.IncrementalObjectiveTotalSub1 = 3
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective020",
    item = "Objective",
    id = "355344"
  }
  l0.IncrementalObjectiveTotalSub2 = 1
  l0.IncrementalObjectiveTotalSub3 = 1
  l0.AutoHideObjective = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|40928624", "40928624", "S15M010_Main", "box_Ordered_Output_102.Out", "box_Restore_Mission_SubObjectives_134.Restore", clone, l0)
  l0:Restore()
end
function export:f_box_Ordered_Output_102_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_101()
  l0 = self.box_MultipleOR_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1918776330", "1918776330", "S15M010_Main", "box_Ordered_Output_102.Out", "box_MultipleOR_101.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SetActionMap_v2_160_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_Buddy_Controller_161
  l0.NPC = self.Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1392655582", "1392655582", "S15M010_Main", "box_SetActionMap_v2_160.Popped", "box_AI_Buddy_Controller_161.Follow", clone, l0)
  l0:Follow()
end
function export:f_box_Escape_Gameplay_19_Escaped()
  local l0
  self = self._graph
  self:OnEnter_box_Escape_Gameplay_19()
  l0 = self.box_Escape_Gameplay_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1281303323", "1281303323", "S15M010_Main", "box_Escape_Gameplay_19.Escaped", "box_Escape_Gameplay_19.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Escape_Gameplay_19_LeftArea()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_19
  l1 = self.box_OnceOnly_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1090022101", "1090022101", "S15M010_Main", "box_Escape_Gameplay_19.LeftArea", "box_OnceOnly_v3_18.In", l0, l1)
  l1:In(0)
end
function export:f_box_Escape_Gameplay_19_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1168546091"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0 = self.box_Escape_Gameplay_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|611900189", "611900189", "S15M010_Main", "box_Escape_Gameplay_19.Stopped", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_148_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_147()
  l0 = self.box_Multiple_AND_148
  l1 = self.box_MultipleOR_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2073190184", "2073190184", "S15M010_Main", "box_Multiple_AND_148.Out", "box_MultipleOR_147.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VisibilityController_v2_15_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372068251697728"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|255190053"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = self.f_box_CollisionController_53_CollisionsEnabled
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|184280723", "184280723", "S15M010_Main", "box_VisibilityController_v2_15.Shown", "box_CollisionController_53.EnableCollisions", clone, l0)
  l0:EnableCollisions()
end
function export:f_box_Vehicle_Controller_116_Usable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_Entity_46
  l0.Entity = self.DriveAndTtalkVehicle
  l0.Destination = "9223372069519497240"
  l0.UseFadeToBlack = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2074378476", "2074378476", "S15M010_Main", "box_Vehicle_Controller_116.Usable", "box_Teleport_Entity_46.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372059919152320"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|329947562"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_49_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|231920057", "231920057", "S15M010_Main", "box_MissionLayer_v2_2.Loaded", "box_InteractionScriptController_49.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Security_Camera_Monitor_112_OnStartExitCamera()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2053945395"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_box_Ordered_Output_115_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_115_Out_2
  l0 = self.box_Security_Camera_Monitor_112
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|451959752", "451959752", "S15M010_Main", "box_Security_Camera_Monitor_112.OnStartExitCamera", "box_Ordered_Output_115.In", l0, l1)
  l1:In()
end
function export:f_box_UnspawnController_36_EntityUnspawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|699455858"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_29_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_29_Out_1
  l0 = self.box_UnspawnController_36
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|452932547", "452932547", "S15M010_Main", "box_UnspawnController_36.EntityUnspawned", "box_Ordered_Output_29.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_83_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_24
  l0.PGTMissionArea = "9223372046758995403"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|593449080", "593449080", "S15M010_Main", "box_Get_Player_ID_83.Out", "box_PGTController_v2_24.Start", clone, l0)
  l0:Start()
end
function export:f_box_CollisionController_53_CollisionsEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_65
  l0.HackableEntity = "9223372059446228060"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1727185822", "1727185822", "S15M010_Main", "box_CollisionController_53.CollisionsEnabled", "box_HackableController_v2_65.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_Ordered_Output_153_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_89
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1331922541", "1331922541", "S15M010_Main", "box_Ordered_Output_153.Out", "box_CinematicPrep_89.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_153_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_91()
  l0 = self.box_MultipleOR_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|642107385", "642107385", "S15M010_Main", "box_Ordered_Output_153.Out", "box_MultipleOR_91.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_71
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective020",
    item = "Objective",
    id = "355344"
  }
  l0 = self.box_MissionMessageController_v3_6
  l1 = self.box_MissionMessageController_v3_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|738494249", "738494249", "S15M010_Main", "box_MissionMessageController_v3_6.Out", "box_MissionMessageController_v3_71.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_AI_Buddy_Monitor_171_OnBuddyTooFarUnspawnRange()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_173
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyAbandoned",
    id = "605440"
  }
  l0 = self.box_AI_Buddy_Monitor_171
  l1 = self.box_MissionController_v4_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1080497051", "1080497051", "S15M010_Main", "box_AI_Buddy_Monitor_171.OnBuddyTooFarUnspawnRange", "box_MissionController_v4_173.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_InteractionScriptController_73_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2057554146"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_100_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_100_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_100_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_100_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_100_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_100_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_100_Out_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1083418966", "1083418966", "S15M010_Main", "box_InteractionScriptController_73.Disabled", "box_Ordered_Output_100.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_128_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_128
  l1 = self.box_S15_M010_CIN_DropTheBaby_Main_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|72649953", "72649953", "S15M010_Main", "box_MultipleOR_128.Out", "box_S15_M010_CIN_DropTheBaby_Main_13.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_193_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_HackableController_v2_193
  l1 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1480516417", "1480516417", "S15M010_Main", "box_HackableController_v2_193.Disabled", "box_MultipleOR_82.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractionScriptController_49_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372048132250614"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|500879419"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_188_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|422879156", "422879156", "S15M010_Main", "box_InteractionScriptController_49.Disabled", "box_InteractionScriptController_188.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_99_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_50()
  l0 = self.box_Timer_v2_99
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|861106349", "861106349", "S15M010_Main", "box_Timer_v2_99.TimeElapsed", "box_VisibilityController_v2_50.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_DPad_Hackable_Controller_197_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_194
  l0.HackableEntity = self.DriveAndTtalkVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1564143920", "1564143920", "S15M010_Main", "box_DPad_Hackable_Controller_197.RemovedAll", "box_HackableController_v2_194.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_CLOController_113_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_113
  self.DriveAndTtalkVehicle = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.DriveAndTtalkVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1848008322"
  l0.Out = DummyFunction
  l0.Usable = self.f_box_Vehicle_Controller_184_Usable
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
  l0 = self.box_CLOController_113
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|514279698", "514279698", "S15M010_Main", "box_CLOController_113.OnUserInPlace", "box_Vehicle_Controller_184.SetAsUsable", l0, l1)
  l1:SetAsUsable()
end
function export:f_box_Ordered_Output_114_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Network_Surfing_Controller_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1401577939", "1401577939", "S15M010_Main", "box_Ordered_Output_114.Out", "box_Network_Surfing_Controller_180.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_114_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_112()
  l0 = self.box_Security_Camera_Monitor_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1243242722", "1243242722", "S15M010_Main", "box_Ordered_Output_114.Out", "box_Security_Camera_Monitor_112.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_114_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1650304554"
  l0.Out = self.f_box_Simple_Node_67_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1984369395", "1984369395", "S15M010_Main", "box_Ordered_Output_114.Out", "box_Simple_Node_67.In", clone, l0)
  l0:In()
end
function export:f_box_LMA_Layer_Controller_25_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|655751859"
  l0.Out = self.f_box_Simple_Node_132_Out
  l0 = self.box_LMA_Layer_Controller_25
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1622726559", "1622726559", "S15M010_Main", "box_LMA_Layer_Controller_25.Loaded", "box_Simple_Node_132.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_24_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_113
  l0.CLO = "9223372049144370585"
  l0 = self.box_PGTController_v2_24
  l1 = self.box_CLOController_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1852881238", "1852881238", "S15M010_Main", "box_PGTController_v2_24.AllSpawned", "box_CLOController_113.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Interact_Gameplay_39_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_Interact_Gameplay_39
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|580248131", "580248131", "S15M010_Main", "box_Interact_Gameplay_39.Interacted", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_71_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|657137749"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_125_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_125_Out_1
  l0 = self.box_MissionMessageController_v3_71
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|322719860", "322719860", "S15M010_Main", "box_MissionMessageController_v3_71.Out", "box_Ordered_Output_125.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_91_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|971749754"
  l0.Out = self.f_box_Simple_Node_96_Out
  l0 = self.box_MultipleOR_91
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|141354625", "141354625", "S15M010_Main", "box_MultipleOR_91.Out", "box_Simple_Node_96.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_11_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372059919152320"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|974944403"
  l0.Enabled = self.f_box_InteractionScriptController_47_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PhoneCommunicationController_11
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|911226117", "911226117", "S15M010_Main", "box_PhoneCommunicationController_11.OnCommunicationFinished", "box_InteractionScriptController_47.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_86_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_11
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346389"
  l0 = self.box_MissionCheckpointReach_86
  l1 = self.box_PhoneCommunicationController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|197425653", "197425653", "S15M010_Main", "box_MissionCheckpointReach_86.Out", "box_PhoneCommunicationController_11.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_InteractionScriptController_188_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|858283990", "858283990", "S15M010_Main", "box_InteractionScriptController_188.Disabled", "box_Get_Player_ID_1.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_172_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_92
  l0.Vehicle = self.DriveAndTtalkVehicle
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|354374763", "354374763", "S15M010_Main", "box_Ordered_Output_172.Out", "box_VehicleSeatingController_92.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Ordered_Output_172_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_Buddy_Monitor_171
  l0.BuddyNPC = self.Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|3002872", "3002872", "S15M010_Main", "box_Ordered_Output_172.Out", "box_AI_Buddy_Monitor_171.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Interact_Gameplay_16_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_79
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective030",
    item = "Objective",
    id = "355345"
  }
  l0 = self.box_Interact_Gameplay_16
  l1 = self.box_MissionMessageController_v3_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|370897259", "370897259", "S15M010_Main", "box_Interact_Gameplay_16.Interacted", "box_MissionMessageController_v3_79.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Delivery_Gameplay_23_AllDeliveryCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|597228666"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_149_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_149_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_149_Out_2
  l0 = self.box_Delivery_Gameplay_23
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1877540642", "1877540642", "S15M010_Main", "box_Delivery_Gameplay_23.AllDeliveryCompleted", "box_Ordered_Output_149.In", l0, l1)
  l1:In()
end
function export:f_box_Delivery_Gameplay_23_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_Delivery_Gameplay_23
  l1 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1352009104", "1352009104", "S15M010_Main", "box_Delivery_Gameplay_23.Started", "box_MultipleOR_48.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Delivery_Gameplay_23_VehicleForceStopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_169()
  l0 = self.box_Delivery_Gameplay_23
  l1 = self.box_OnceOnly_v3_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1937752248", "1937752248", "S15M010_Main", "box_Delivery_Gameplay_23.VehicleForceStopped", "box_OnceOnly_v3_169.In", l0, l1)
  l1:In(1)
end
function export:f_box_InteractionScriptController_117_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372048132250614"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1034371546"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_190_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|361384154", "361384154", "S15M010_Main", "box_InteractionScriptController_117.Disabled", "box_InteractionScriptController_190.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_33_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S15M010_SCR_Main_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|726850942", "726850942", "S15M010_Main", "box_Ordered_Output_33.Out", "box_S15M010_SCR_Main_32.SCR_RobotHeadTalking_In", clone, l0)
  l0:SCR_RobotHeadTalking_In()
end
function export:f_box_Ordered_Output_33_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S15M010_SCR_Main_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|96025168", "96025168", "S15M010_Main", "box_Ordered_Output_33.Out", "box_S15M010_SCR_Main_55.SCR_RobotMoving", clone, l0)
  l0:SCR_RobotMoving()
end
function export:f_box_Ordered_Output_33_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S15M010_SCR_Main_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1380798758", "1380798758", "S15M010_Main", "box_Ordered_Output_33.Out", "box_S15M010_SCR_Main_56.SCR_RobotConveyorBlock", clone, l0)
  l0:SCR_RobotConveyorBlock()
end
function export:f_box_Ordered_Output_33_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S15M010_SCR_Main_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|912587101", "912587101", "S15M010_Main", "box_Ordered_Output_33.Out", "box_S15M010_SCR_Main_3.RobotReceptionist", clone, l0)
  l0:RobotReceptionist()
end
function export:f_box_Ordered_Output_33_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S15M010_SCR_Main_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|711654398", "711654398", "S15M010_Main", "box_Ordered_Output_33.Out", "box_S15M010_SCR_Main_20.SCR_RepairRobot", clone, l0)
  l0:SCR_RepairRobot()
end
function export:f_box_Ordered_Output_33_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372059919152320"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1120192677"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|46276612", "46276612", "S15M010_Main", "box_Ordered_Output_33.Out", "box_InteractionScriptController_120.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_33_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372068251697728"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2092684688"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_131_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|715773061", "715773061", "S15M010_Main", "box_Ordered_Output_33.Out", "box_VisibilityController_v2_131.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CLOController_57_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_57
  self.Wrench = l0.UserID
  l0 = self.box_VehicleSeatingController_54
  l0.Vehicle = self.DriveAndTtalkVehicle
  l0.Pawn = self.Wrench
  l0.Seat = "FrontPassenger"
  l0 = self.box_CLOController_57
  l1 = self.box_VehicleSeatingController_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1897966934", "1897966934", "S15M010_Main", "box_CLOController_57.OnUserInPlace", "box_VehicleSeatingController_54.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_InteractionScriptController_139_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046758922553"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1946450267"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_156_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1165122121", "1165122121", "S15M010_Main", "box_InteractionScriptController_139.Disabled", "box_InteractionScriptController_156.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_149_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046758922555"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1217442857"
  l0.Enabled = self.f_box_InteractionScriptController_162_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|665012812", "665012812", "S15M010_Main", "box_Ordered_Output_149.Out", "box_InteractionScriptController_162.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_149_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_148()
  l0 = self.box_Multiple_AND_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1438935753", "1438935753", "S15M010_Main", "box_Ordered_Output_149.Out", "box_Multiple_AND_148.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_149_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_169()
  l0 = self.box_OnceOnly_v3_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|236730117", "236730117", "S15M010_Main", "box_Ordered_Output_149.Out", "box_OnceOnly_v3_169.In", clone, l0)
  l0:In(0)
end
function export:f_box_DPad_Hackable_Controller_199_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_196
  l0.HackableEntity = self.DriveAndTtalkVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|386318426", "386318426", "S15M010_Main", "box_DPad_Hackable_Controller_199.RemovedAll", "box_HackableController_v2_196.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_CLOController_144_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_144
  self.Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.DriveAndTtalkVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1349888753"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Vehicle_Controller_78_Unusable
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
  l0 = self.box_CLOController_144
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1896026310", "1896026310", "S15M010_Main", "box_CLOController_144.OnUserInPlace", "box_Vehicle_Controller_78.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_InteractionScriptController_63_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372048132250614"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|660227475"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_189_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1717601600", "1717601600", "S15M010_Main", "box_InteractionScriptController_63.Disabled", "box_InteractionScriptController_189.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CinematicPrep_84_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1893986591"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_176_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_176_Out_1
  l0 = self.box_CinematicPrep_84
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1036853411", "1036853411", "S15M010_Main", "box_CinematicPrep_84.PostOut", "box_Ordered_Output_176.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_175_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_177()
  l0 = self.box_TriggerMonitor_v2_175
  l1 = self.box_MultipleOR_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1774498983", "1774498983", "S15M010_Main", "box_TriggerMonitor_v2_175.Disabled", "box_MultipleOR_177.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_175_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_175()
  l0 = self.box_TriggerMonitor_v2_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1740369834", "1740369834", "S15M010_Main", "box_TriggerMonitor_v2_175.Enter", "box_TriggerMonitor_v2_175.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046758922555"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1187780810"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_140_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionMessageController_v3_10
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|363322965", "363322965", "S15M010_Main", "box_MissionMessageController_v3_10.Out", "box_InteractionScriptController_140.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_123_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MyWorldObjectMonitorController_126()
  l0 = self.box_MultipleOR_123
  l1 = self.box_MyWorldObjectMonitorController_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1788738093", "1788738093", "S15M010_Main", "box_MultipleOR_123.Out", "box_MyWorldObjectMonitorController_126.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_35
  l0.CLO = "9223372046758997005"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1484768584", "1484768584", "S15M010_Main", "box_Ordered_Output_60.Out", "box_CLOController_35.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372068251697728"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1068086865"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_59_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2121907695", "2121907695", "S15M010_Main", "box_Ordered_Output_60.Out", "box_VisibilityController_v2_59.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Simple_Node_132_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_123()
  l0 = self.box_MultipleOR_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|725068410", "725068410", "S15M010_Main", "box_Simple_Node_132.Out", "box_MultipleOR_123.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_125_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MyWorldObjectMonitorController_126()
  l0 = self.box_MyWorldObjectMonitorController_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|50709958", "50709958", "S15M010_Main", "box_Ordered_Output_125.Out", "box_MyWorldObjectMonitorController_126.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_125_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_16
  l0.Entity = "9223372048132250614"
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|393219180", "393219180", "S15M010_Main", "box_Ordered_Output_125.Out", "box_Interact_Gameplay_16.Start", clone, l0)
  l0:Start()
end
function export:f_box_Restore_Mission_SubObjectives_134_Restored()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_143
  l0.CLO = "9223372047564315940"
  l0 = self.box_Restore_Mission_SubObjectives_134
  l1 = self.box_CLOController_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1745176448", "1745176448", "S15M010_Main", "box_Restore_Mission_SubObjectives_134.Restored", "box_CLOController_143.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_InteractionScriptController_189_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_128()
  l0 = self.box_MultipleOR_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|688892588", "688892588", "S15M010_Main", "box_InteractionScriptController_189.Disabled", "box_MultipleOR_128.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Vehicle_Controller_61_Unmovable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_Buddy_Controller_154
  l0.NPC = self.Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|759863283", "759863283", "S15M010_Main", "box_Vehicle_Controller_61.Unmovable", "box_AI_Buddy_Controller_154.Wait", clone, l0)
  l0:Wait()
end
function export:f_box_Ordered_Output_29_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Failure_12()
  l0 = self.box_Vehicle_Failure_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|512184104", "512184104", "S15M010_Main", "box_Ordered_Output_29.Out", "box_Vehicle_Failure_12.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_29_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_UnspawnController_40
  l0.Entity = self.DriveAndTtalkVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|591783331", "591783331", "S15M010_Main", "box_Ordered_Output_29.Out", "box_UnspawnController_40.UnspawnEntity", clone, l0)
  l0:UnspawnEntity()
end
function export:f_box_PGTController_v2_77_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1729461411"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_121_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_121_Out_1
  l0 = self.box_PGTController_v2_77
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|711715582", "711715582", "S15M010_Main", "box_PGTController_v2_77.AllSpawned", "box_Ordered_Output_121.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_38_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_Interact_Gameplay_38
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|234859345", "234859345", "S15M010_Main", "box_Interact_Gameplay_38.Interacted", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_MultipleOR_52_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|646456510"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  l0 = self.box_MultipleOR_52
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1475224857", "1475224857", "S15M010_Main", "box_MultipleOR_52.Out", "box_Ordered_Output_60.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_79_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_95
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346390"
  l0 = self.box_MissionMessageController_v3_79
  l1 = self.box_PhoneCommunicationController_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1399198731", "1399198731", "S15M010_Main", "box_MissionMessageController_v3_79.Out", "box_PhoneCommunicationController_95.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Simple_Node_174_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_175()
  l0 = self.box_TriggerMonitor_v2_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1585427561", "1585427561", "S15M010_Main", "box_Simple_Node_174.Out", "box_TriggerMonitor_v2_175.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_143_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_143
  self.DriveAndTtalkVehicle = l0.UserID
  l0 = self.box_CLOController_144
  l0.CLO = "9223372049144373438"
  l0 = self.box_CLOController_143
  l1 = self.box_CLOController_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1996518651", "1996518651", "S15M010_Main", "box_CLOController_143.OnUserInPlace", "box_CLOController_144.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_135_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1166141385", "1166141385", "S15M010_Main", "box_Ordered_Output_135.Out", "box_Timer_v2_99.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_135_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_70()
  l0 = self.box_InteractionScriptMonitor_v2_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|242900877", "242900877", "S15M010_Main", "box_Ordered_Output_135.Out", "box_InteractionScriptMonitor_v2_70.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_VisibilityController_v2_166_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372068251697728"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|681849278"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|226697566", "226697566", "S15M010_Main", "box_VisibilityController_v2_166.Hidden", "box_CollisionController_168.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_Simple_Node_93_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_101()
  l0 = self.box_MultipleOR_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|917372797", "917372797", "S15M010_Main", "box_Simple_Node_93.Out", "box_MultipleOR_101.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_90_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|858115448"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_167_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_167_Out_1
  l0 = self.box_MultipleOR_90
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|831119154", "831119154", "S15M010_Main", "box_MultipleOR_90.Out", "box_Ordered_Output_167.In", l0, l1)
  l1:In()
end
function export:f_box_UnspawnController_40_EntityUnspawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1129017534"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_66_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_66_Out_1
  l0 = self.box_UnspawnController_40
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|978118751", "978118751", "S15M010_Main", "box_UnspawnController_40.EntityUnspawned", "box_Ordered_Output_66.In", l0, l1)
  l1:In()
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
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1161235374"
  l0.Out = self.f_box_SetTimeOfDay_187_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1137062360", "1137062360", "S15M010_Main", "box_Get_Player_ID_1.Out", "box_SetTimeOfDay_187.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_SecurityCamController_41_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|356839438"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_114_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_114_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_114_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|510554196", "510554196", "S15M010_Main", "box_SecurityCamController_41.EnterForced", "box_Ordered_Output_114.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_44_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Network_Surfing_Controller_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2021563715", "2021563715", "S15M010_Main", "box_Ordered_Output_44.Out", "box_Network_Surfing_Controller_181.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_44_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372048132250614"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1924722635"
  l0.Enabled = self.f_box_InteractionScriptController_191_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1155294757", "1155294757", "S15M010_Main", "box_Ordered_Output_44.Out", "box_InteractionScriptController_191.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Network_Surfing_Controller_180_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_27()
  l0 = self.box_Network_Surfing_Controller_180
  l1 = self.box_PlaySequence_v5_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1590916624", "1590916624", "S15M010_Main", "box_Network_Surfing_Controller_180.Deactivated", "box_PlaySequence_v5_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_167_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_86
  l0.Checkpoint = "CheckPoint_2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|670843694", "670843694", "S15M010_Main", "box_Ordered_Output_167.Out", "box_MissionCheckpointReach_86.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_167_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372068251697728"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|755800203"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_166_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1085941115", "1085941115", "S15M010_Main", "box_Ordered_Output_167.Out", "box_VisibilityController_v2_166.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_HackableController_v2_205_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_205()
  l0 = self.box_HackableController_v2_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1931046217", "1931046217", "S15M010_Main", "box_HackableController_v2_205.Enabled", "box_HackableController_v2_205.EnableProfiling", l0, l0)
  l0:EnableProfiling()
end
function export:f_box_HackableController_v2_205_ProfilingEnabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_205()
  l0 = self.box_HackableController_v2_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|572238113", "572238113", "S15M010_Main", "box_HackableController_v2_205.ProfilingEnabled", "box_HackableController_v2_205.ForceHack", l0, l0)
  l0:ForceHack()
end
function export:f_box_OnceOnly_v3_169_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Controller_124
  l0.NPC = self.Wrench
  l0 = self.box_OnceOnly_v3_169
  l1 = self.box_AI_Buddy_Controller_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1049803643", "1049803643", "S15M010_Main", "box_OnceOnly_v3_169.Out", "box_AI_Buddy_Controller_124.Wait", l0, l1)
  l1:Wait()
end
function export:f_box_HackableController_v2_195_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|256751757"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_153_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_153_Out_1
  l0 = self.box_HackableController_v2_195
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|438802079", "438802079", "S15M010_Main", "box_HackableController_v2_195.ProfilingDisabled", "box_Ordered_Output_153.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_157_Assigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.DriveAndTtalkVehicle
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|602755701"
  l0._DynamicAnchors = {HackCategoryType = 2}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_box_DPad_Hackable_Controller_199_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0 = self.box_VehicleSeatingController_157
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1032384319", "1032384319", "S15M010_Main", "box_VehicleSeatingController_157.Assigned", "box_DPad_Hackable_Controller_199.RemoveAll", l0, l1)
  l1:RemoveAll()
end
function export:f_box_Teleport_Entity_46_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.Wrench
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_VehicleSeatingMonitor_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1553645436"
  l0.EntityIsInVehicle = self.f_box_VehicleSeatingMonitor_170_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_box_VehicleSeatingMonitor_170_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0 = self.box_Teleport_Entity_46
  l1 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|625791466", "625791466", "S15M010_Main", "box_Teleport_Entity_46.TeleportDone", "box_VehicleSeatingMonitor_170.IsInVehicle", l0, l1)
  l1:IsInVehicle()
end
function export:f_box_CinematicPrep_89_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_90()
  l0 = self.box_CinematicPrep_89
  l1 = self.box_MultipleOR_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1892147841", "1892147841", "S15M010_Main", "box_CinematicPrep_89.PostOut", "box_MultipleOR_90.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_96_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Failure_12()
  l0 = self.box_Vehicle_Failure_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|801032836", "801032836", "S15M010_Main", "box_Simple_Node_96.Out", "box_Vehicle_Failure_12.Start", clone, l0)
  l0:Start()
end
function export:f_box_PawnHealthMonitor_v3_129_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_80
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_PawnHealthMonitor_v3_129
  l1 = self.box_MissionCheckpointReach_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|413947043", "413947043", "S15M010_Main", "box_PawnHealthMonitor_v3_129.Enabled", "box_MissionCheckpointReach_80.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v3_129_Killed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_130
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyKilled",
    id = "689089"
  }
  l0 = self.box_PawnHealthMonitor_v3_129
  l1 = self.box_MissionController_v4_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1005485801", "1005485801", "S15M010_Main", "box_PawnHealthMonitor_v3_129.Killed", "box_MissionController_v4_130.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_InteractionScriptController_47_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|109624814"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_183_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_183_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|732417208", "732417208", "S15M010_Main", "box_InteractionScriptController_47.Enabled", "box_Ordered_Output_183.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_27_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_111()
  l0 = self.box_PlaySequence_v5_27
  l1 = self.box_OnceOnly_v3_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|819560387", "819560387", "S15M010_Main", "box_PlaySequence_v5_27.Finished", "box_OnceOnly_v3_111.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_27_SPOut__OutOfCam_()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_41()
  l0 = self.box_PlaySequence_v5_27
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|968398807", "968398807", "S15M010_Main", "box_PlaySequence_v5_27.SPOut", "box_SecurityCamController_41.ForceUserOutOfCamera", l0, l1)
  l1:ForceUserOutOfCamera()
end
function export:f_box_PlaySequence_v5_27_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_27
  self.Wrench_PostCin = l0.EntityOut.Wrench_Var
end
function export:f_box_PlaySequence_v5_27_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_111()
  l0 = self.box_PlaySequence_v5_27
  l1 = self.box_OnceOnly_v3_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|494905705", "494905705", "S15M010_Main", "box_PlaySequence_v5_27.Stopped", "box_OnceOnly_v3_111.In", l0, l1)
  l1:In(0)
end
function export:f_box_InteractionScriptController_190_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.DriveAndTtalkVehicle
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|347247332"
  l0._DynamicAnchors = {HackCategoryType = 2}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_box_DPad_Hackable_Controller_197_RemovedAll
  l0.HackingDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1543929374", "1543929374", "S15M010_Main", "box_InteractionScriptController_190.Disabled", "box_DPad_Hackable_Controller_197.RemoveAll", clone, l0)
  l0:RemoveAll()
end
function export:f_box_OnceOnly_v3_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_42
  l0.LMALayerName = "SF_08_BayviewDepot_LMA"
  l0 = self.box_OnceOnly_v3_18
  l1 = self.box_LMA_Layer_Controller_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1933308602", "1933308602", "S15M010_Main", "box_OnceOnly_v3_18.Out", "box_LMA_Layer_Controller_42.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_39
  l0.Entity = "9223372046758922555"
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|215862054", "215862054", "S15M010_Main", "box_Ordered_Output_7.Out", "box_Interact_Gameplay_39.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_37
  l0.Entity = "9223372046758922553"
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|224218129", "224218129", "S15M010_Main", "box_Ordered_Output_7.Out", "box_Interact_Gameplay_37.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_7_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_38
  l0.Entity = "9223372046758922557"
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1154177806", "1154177806", "S15M010_Main", "box_Ordered_Output_7.Out", "box_Interact_Gameplay_38.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_59_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372068251697728"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|32893056"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|51085401", "51085401", "S15M010_Main", "box_VisibilityController_v2_59.Hidden", "box_CollisionController_110.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_Ordered_Output_106_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_30
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective040",
    item = "Objective",
    id = "355350"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1455822103", "1455822103", "S15M010_Main", "box_Ordered_Output_106.Out", "box_MissionMessageController_v3_30.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_106_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_74()
  l0 = self.box_MissionZone_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|612268339", "612268339", "S15M010_Main", "box_Ordered_Output_106.Out", "box_MissionZone_74.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_AI_Buddy_Controller_4_IsWaiting()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|541646517"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_172_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_172_Out_1
  l0 = self.box_AI_Buddy_Controller_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|531447958", "531447958", "S15M010_Main", "box_AI_Buddy_Controller_4.IsWaiting", "box_Ordered_Output_172.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_159_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|197772132"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_160_Popped
  l0 = self.box_CinematicPrep_159
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|631643704", "631643704", "S15M010_Main", "box_CinematicPrep_159.PostOut", "box_SetActionMap_v2_160.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_Ordered_Output_66_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372068251697728"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|217886145"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_15_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2048394313", "2048394313", "S15M010_Main", "box_Ordered_Output_66.Out", "box_VisibilityController_v2_15.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_66_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Control_the_profiling_capabilities_of_a_player_64()
  l0 = self.box_Control_the_profiling_capabilities_of_a_player_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1779817486", "1779817486", "S15M010_Main", "box_Ordered_Output_66.Out", "box_Control_the_profiling_capabilities_of_a_player_64.ReenableProfiler", clone, l0)
  l0:ReenableProfiler()
end
function export:f_box_MissionLayer_v2_88_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1752997733"
  l0.Out = self.f_box_Get_Player_ID_87_Out
  l0 = self.box_MissionLayer_v2_88
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1831172005", "1831172005", "S15M010_Main", "box_MissionLayer_v2_88.Loaded", "box_Get_Player_ID_87.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_122_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_43()
  l0 = self.box_DriveAndTalk_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1561498820", "1561498820", "S15M010_Main", "box_Ordered_Output_122.Out", "box_DriveAndTalk_43.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_122_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|732737531"
  l0.Out = self.f_box_Simple_Node_174_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|167236051", "167236051", "S15M010_Main", "box_Ordered_Output_122.Out", "box_Simple_Node_174.In", clone, l0)
  l0:In()
end
function export:f_box_SetTimeOfDay_187_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_128()
  l0 = self.box_MultipleOR_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|876814345", "876814345", "S15M010_Main", "box_SetTimeOfDay_187.Out", "box_MultipleOR_128.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_146_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_147()
  l0 = self.box_MultipleOR_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|71236142", "71236142", "S15M010_Main", "box_Simple_Node_146.Out", "box_MultipleOR_147.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669165"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|210804106"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|210746409", "210746409", "S15M010_Main", "box_Ordered_Output_17.Out", "box_MissionMusicController_58.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_28()
  l0 = self.box_Mission_End_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|807859601", "807859601", "S15M010_Main", "box_Ordered_Output_17.Out", "box_Mission_End_28.End", clone, l0)
  l0:End()
end
function export:f_box_InteractionScriptController_140_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046758922557"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|595791349"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_139_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2109798190", "2109798190", "S15M010_Main", "box_InteractionScriptController_140.Disabled", "box_InteractionScriptController_139.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOController_9_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_9
  self.Wrench = l0.UserID
  l0 = self.box_AI_Buddy_Controller_4
  l0.NPC = self.Wrench
  l0 = self.box_CLOController_9
  l1 = self.box_AI_Buddy_Controller_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|235096592", "235096592", "S15M010_Main", "box_CLOController_9.OnUserInPlace", "box_AI_Buddy_Controller_4.Wait", l0, l1)
  l1:Wait()
end
function export:f_box_CLOController_35_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_35
  self.DriveAndTtalkVehicle = l0.UserID
  l0 = self.box_CLOController_9
  l0.CLO = "9223372049003900453"
  l0 = self.box_CLOController_35
  l1 = self.box_CLOController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|538025460", "538025460", "S15M010_Main", "box_CLOController_35.OnUserInPlace", "box_CLOController_9.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_InteractionScriptController_162_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046758922557"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|54996139"
  l0.Enabled = self.f_box_InteractionScriptController_164_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|667955022", "667955022", "S15M010_Main", "box_InteractionScriptController_162.Enabled", "box_InteractionScriptController_164.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Vehicle_Controller_14_Unmovable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_90()
  l0 = self.box_MultipleOR_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1425558667", "1425558667", "S15M010_Main", "box_Vehicle_Controller_14.Unmovable", "box_MultipleOR_90.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_98_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_8
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective015",
    item = "Objective",
    id = "355343"
  }
  l0 = self.box_MultipleOR_98
  l1 = self.box_MissionMessageController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|75713714", "75713714", "S15M010_Main", "box_MultipleOR_98.Out", "box_MissionMessageController_v3_8.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MissionMessageController_v3_72_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_69
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective015",
    item = "Objective",
    id = "355343"
  }
  l0 = self.box_MissionMessageController_v3_72
  l1 = self.box_MissionMessageController_v3_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1762371180", "1762371180", "S15M010_Main", "box_MissionMessageController_v3_72.Out", "box_MissionMessageController_v3_69.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MissionCheckpointReach_80_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_10
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective010",
    item = "Objective",
    id = "549011"
  }
  l0 = self.box_MissionCheckpointReach_80
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|934202424", "934202424", "S15M010_Main", "box_MissionCheckpointReach_80.Out", "box_MissionMessageController_v3_10.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Get_Player_ID_68_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
end
function export:f_box_Player_Proximity_Monitor_109_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_25
  l0.LMALayerName = "SF_08_BayviewDepot_LMA"
  l0 = self.box_Player_Proximity_Monitor_109
  l1 = self.box_LMA_Layer_Controller_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2101511911", "2101511911", "S15M010_Main", "box_Player_Proximity_Monitor_109.Disabled", "box_LMA_Layer_Controller_25.Load", l0, l1)
  l1:Load()
end
function export:f_box_Player_Proximity_Monitor_109_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Delivery_Gameplay_23
  l0.VehicleEntity = self.DriveAndTtalkVehicle
  l0.DestinationTrigger = "9223372052988754325"
  l0.NbToDeliver = 1
  l0.VehicleMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.DestinationMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.GetOutToComplete = 1
  l0.ForceStopAtDestination = 1
  l0.ForceStopBrake = "Medium"
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective010",
    item = "Objective",
    id = "549011"
  }
  l0 = self.box_Player_Proximity_Monitor_109
  l1 = self.box_Delivery_Gameplay_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|181956531", "181956531", "S15M010_Main", "box_Player_Proximity_Monitor_109.Enabled", "box_Delivery_Gameplay_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_Proximity_Monitor_109_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_109()
  l0 = self.box_Player_Proximity_Monitor_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2046900953", "2046900953", "S15M010_Main", "box_Player_Proximity_Monitor_109.EnterRadius", "box_Player_Proximity_Monitor_109.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AI_Buddy_Controller_155_IsWaiting()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.DriveAndTtalkVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|170224815"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Vehicle_Controller_142_Unusable
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
  l0 = self.box_AI_Buddy_Controller_155
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|606470214", "606470214", "S15M010_Main", "box_AI_Buddy_Controller_155.IsWaiting", "box_Vehicle_Controller_142.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_MultipleOR_178_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Controller_155
  l0.NPC = self.Wrench
  l0 = self.box_MultipleOR_178
  l1 = self.box_AI_Buddy_Controller_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|500346239", "500346239", "S15M010_Main", "box_MultipleOR_178.Out", "box_AI_Buddy_Controller_155.Wait", l0, l1)
  l1:Wait()
end
function export:f_box_DriveAndTalk_43_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_109()
  l0 = self.box_DriveAndTalk_43
  l1 = self.box_Player_Proximity_Monitor_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1756439963", "1756439963", "S15M010_Main", "box_DriveAndTalk_43.Started", "box_Player_Proximity_Monitor_109.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DriveAndTalk_43_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1675465013"
  l0.Out = self.f_box_Simple_Node_145_Out
  l0 = self.box_DriveAndTalk_43
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|866307661", "866307661", "S15M010_Main", "box_DriveAndTalk_43.Stopped", "box_Simple_Node_145.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_43_TalkFinished()
  local l0
  self = self._graph
  self:OnEnter_box_DriveAndTalk_43()
  l0 = self.box_DriveAndTalk_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1254769873", "1254769873", "S15M010_Main", "box_DriveAndTalk_43.TalkFinished", "box_DriveAndTalk_43.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_SwitchOutput_v3_97_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_98()
  l0 = self.box_SwitchOutput_v3_97
  l1 = self.box_MultipleOR_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1322456980", "1322456980", "S15M010_Main", "box_SwitchOutput_v3_97.Output", "box_MultipleOR_98.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SwitchOutput_v3_97_Output_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_98()
  l0 = self.box_SwitchOutput_v3_97
  l1 = self.box_MultipleOR_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1485757302", "1485757302", "S15M010_Main", "box_SwitchOutput_v3_97.Output", "box_MultipleOR_98.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SwitchOutput_v3_97_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_72
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective020",
    item = "Objective",
    id = "355344"
  }
  l0 = self.box_SwitchOutput_v3_97
  l1 = self.box_MissionMessageController_v3_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|423234005", "423234005", "S15M010_Main", "box_SwitchOutput_v3_97.Output", "box_MissionMessageController_v3_72.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_HackableController_v2_196_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_159
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_196
  l1 = self.box_CinematicPrep_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|808332384", "808332384", "S15M010_Main", "box_HackableController_v2_196.ProfilingDisabled", "box_CinematicPrep_159.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Vehicle_Controller_78_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.DriveAndTtalkVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|666099174"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = self.f_box_Vehicle_Controller_61_Unmovable
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|376161911", "376161911", "S15M010_Main", "box_Vehicle_Controller_78.Unusable", "box_Vehicle_Controller_61.SetAsUnmovable", clone, l0)
  l0:SetAsUnmovable()
end
function export:f_box_MissionMessageController_v3_69_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.DriveAndTtalkVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|219333450"
  l0.Out = DummyFunction
  l0.Usable = self.f_box_Vehicle_Controller_116_Usable
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
  l0 = self.box_MissionMessageController_v3_69
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1033786236", "1033786236", "S15M010_Main", "box_MissionMessageController_v3_69.Out", "box_Vehicle_Controller_116.SetAsUsable", l0, l1)
  l1:SetAsUsable()
end
function export:f_box_MissionLayer_v2_75_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1918123538"
  l0.Out = self.f_box_SetTimeOfDay_200_Out
  l0 = self.box_MissionLayer_v2_75
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|397403024", "397403024", "S15M010_Main", "box_MissionLayer_v2_75.Loaded", "box_SetTimeOfDay_200.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_MultipleOR_101_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_74()
  l0 = self.box_MultipleOR_101
  l1 = self.box_MissionZone_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|955386758", "955386758", "S15M010_Main", "box_MultipleOR_101.Out", "box_MissionZone_74.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleSeatingController_92_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_34
  l0.PGTMissionArea = "9223372046758995403"
  l0 = self.box_VehicleSeatingController_92
  l1 = self.box_PGTController_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|953499355", "953499355", "S15M010_Main", "box_VehicleSeatingController_92.Assigned", "box_PGTController_v2_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_85_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|230400095"
  l0.Out = self.f_box_Get_Player_ID_83_Out
  l0 = self.box_MissionLayer_v2_85
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|669060782", "669060782", "S15M010_Main", "box_MissionLayer_v2_85.Loaded", "box_Get_Player_ID_83.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_54_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.DriveAndTtalkVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1587923249"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Vehicle_Controller_119_Unusable
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
  l0 = self.box_VehicleSeatingController_54
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1608203796", "1608203796", "S15M010_Main", "box_VehicleSeatingController_54.AssignCompleted", "box_Vehicle_Controller_119.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_MissionMusicController_21_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1279612695"
  l0.Out = self.f_box_Get_Player_ID_68_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|257994616", "257994616", "S15M010_Main", "box_MissionMusicController_21.Activated", "box_Get_Player_ID_68.In", clone, l0)
  l0:In()
end
function export:f_box_SetActionMap_v2_158_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_157
  l0.Vehicle = self.DriveAndTtalkVehicle
  l0.Pawn = self.Wrench
  l0.UseAnimation = 1
  l0.Seat = "FrontPassenger"
  l0.WalkType = "Walk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1085202694", "1085202694", "S15M010_Main", "box_SetActionMap_v2_158.Pushed", "box_VehicleSeatingController_157.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_HackableController_v2_31_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_45
  l0.HackableEntity = "9223372056229363313"
  l0 = self.box_HackableController_v2_31
  l1 = self.box_HackableController_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1472487973", "1472487973", "S15M010_Main", "box_HackableController_v2_31.Enabled", "box_HackableController_v2_45.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_MissionMessageController_v3_26_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1812683162"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_201_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_201_Out_1
  l0 = self.box_MissionMessageController_v3_26
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1894112920", "1894112920", "S15M010_Main", "box_MissionMessageController_v3_26.Out", "box_Ordered_Output_201.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingMonitor_170_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_141
  l0.Pawn = self.Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1849337317", "1849337317", "S15M010_Main", "box_VehicleSeatingMonitor_170.EntityIsInVehicle", "box_VehicleSeatingController_141.Unassign", clone, l0)
  l0:Unassign()
end
function export:f_box_VehicleSeatingMonitor_170_EntityIsNotInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_178()
  l0 = self.box_MultipleOR_178
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|721037390", "721037390", "S15M010_Main", "box_VehicleSeatingMonitor_170.EntityIsNotInVehicle", "box_MultipleOR_178.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Vehicle_Controller_119_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372059919152320"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|574328897"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_117_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1007608426", "1007608426", "S15M010_Main", "box_Vehicle_Controller_119.Unusable", "box_InteractionScriptController_117.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_DPad_Hackable_Controller_198_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_195
  l0.HackableEntity = self.DriveAndTtalkVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1552602287", "1552602287", "S15M010_Main", "box_DPad_Hackable_Controller_198.RemovedAll", "box_HackableController_v2_195.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Interact_Gameplay_37_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_Interact_Gameplay_37
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|778141153", "778141153", "S15M010_Main", "box_Interact_Gameplay_37.Interacted", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Control_the_profiling_capabilities_of_a_player_64()
  l0 = self.box_Control_the_profiling_capabilities_of_a_player_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|870569187", "870569187", "S15M010_Main", "box_Simple_Node_67.Out", "box_Control_the_profiling_capabilities_of_a_player_64.DisableProfiler", clone, l0)
  l0:DisableProfiler()
end
function export:f_box_Simple_Node_145_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_148()
  l0 = self.box_Multiple_AND_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1838398405", "1838398405", "S15M010_Main", "box_Simple_Node_145.Out", "box_Multiple_AND_148.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_OnceOnly_v3_111_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|831879750"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_44_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_44_Out_1
  l0 = self.box_OnceOnly_v3_111
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|878225503", "878225503", "S15M010_Main", "box_OnceOnly_v3_111.Out", "box_Ordered_Output_44.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_121_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_123()
  l0 = self.box_MultipleOR_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1133801", "1133801", "S15M010_Main", "box_Ordered_Output_121.Out", "box_MultipleOR_123.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_121_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Entity_InteractOpenDoor
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|296293003"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_73_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1569470818", "1569470818", "S15M010_Main", "box_Ordered_Output_121.Out", "box_InteractionScriptController_73.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_81_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1056301171"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_7_Out_2
  l0.Out[3] = DummyFunction
  l0 = self.box_MissionCheckpointReach_81
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1342725688", "1342725688", "S15M010_Main", "box_MissionCheckpointReach_81.Out", "box_Ordered_Output_7.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_62_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669165"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1482926357"
  l0.Activated = self.f_box_MissionMusicController_21_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_PhoneCommunicationController_62
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1836029908", "1836029908", "S15M010_Main", "box_PhoneCommunicationController_62.OnCommunicationFinished", "box_MissionMusicController_21.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Get_Player_ID_87_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_77
  l0.PGTMissionArea = "9223372046758995403"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|499171301", "499171301", "S15M010_Main", "box_Get_Player_ID_87.Out", "box_PGTController_v2_77.Start", clone, l0)
  l0:Start()
end
function export:f_box_InteractionScriptMonitor_v2_70_AnimationStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|746985348"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_135_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_135_Out_1
  l0 = self.box_InteractionScriptMonitor_v2_70
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|147991299", "147991299", "S15M010_Main", "box_InteractionScriptMonitor_v2_70.AnimationStarted", "box_Ordered_Output_135.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_147_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_62
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370929"
  l0 = self.box_MultipleOR_147
  l1 = self.box_PhoneCommunicationController_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|628573547", "628573547", "S15M010_Main", "box_MultipleOR_147.Out", "box_PhoneCommunicationController_62.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Network_Surfing_Controller_181_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_UnspawnController_36
  l0.Entity = self.Wrench_PostCin
  l0 = self.box_Network_Surfing_Controller_181
  l1 = self.box_UnspawnController_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1701393917", "1701393917", "S15M010_Main", "box_Network_Surfing_Controller_181.Deactivated", "box_UnspawnController_36.UnspawnEntity", l0, l1)
  l1:UnspawnEntity()
end
function export:f_box_Interact_Gameplay_22_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|106424239"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_94_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_94_Out_1
  l0 = self.box_Interact_Gameplay_22
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2086120628", "2086120628", "S15M010_Main", "box_Interact_Gameplay_22.Interacted", "box_Ordered_Output_94.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_22_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_70()
  l0 = self.box_Interact_Gameplay_22
  l1 = self.box_InteractionScriptMonitor_v2_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1855500921", "1855500921", "S15M010_Main", "box_Interact_Gameplay_22.Started", "box_InteractionScriptMonitor_v2_70.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_22_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|125265139"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_51_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_51_Out_1
  l0 = self.box_Interact_Gameplay_22
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|659126877", "659126877", "S15M010_Main", "box_Interact_Gameplay_22.Stopped", "box_Ordered_Output_51.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_177_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|577487131"
  l0._DynamicAnchors = {Out = 9}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_box_Ordered_Output_33_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_33_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_33_Out_3
  l0.Out[4] = DummyFunction
  l0.Out[5] = self.f_box_Ordered_Output_33_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_33_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_33_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_33_Out_8
  l0 = self.box_MultipleOR_177
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|587331454", "587331454", "S15M010_Main", "box_MultipleOR_177.Out", "box_Ordered_Output_33.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_194_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|50039716"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_127_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_127_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_127_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_127_Out_3
  l0 = self.box_HackableController_v2_194
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|551989744", "551989744", "S15M010_Main", "box_HackableController_v2_194.ProfilingDisabled", "box_Ordered_Output_127.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_201_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_81
  l0.Checkpoint = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1625411408", "1625411408", "S15M010_Main", "box_Ordered_Output_201.Out", "box_MissionCheckpointReach_81.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_201_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|769500894"
  l0.Out = self.f_box_Simple_Node_93_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1574838860", "1574838860", "S15M010_Main", "box_Ordered_Output_201.Out", "box_Simple_Node_93.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_76_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372059919152320"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|614386237"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_63_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1099695143", "1099695143", "S15M010_Main", "box_Get_Player_ID_76.Out", "box_InteractionScriptController_63.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_82_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_26
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "Objective",
    id = "693241"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective015",
    item = "Objective",
    id = "355343"
  }
  l0.IncrementalObjectiveTotalSub1 = 3
  l0.HasObjectiveMarker = 0
  l0 = self.box_MultipleOR_82
  l1 = self.box_MissionMessageController_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|882634204", "882634204", "S15M010_Main", "box_MultipleOR_82.Out", "box_MissionMessageController_v3_26.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Vehicle_Controller_184_Usable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_57
  l0.CLO = "9223372049144373438"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1527748591", "1527748591", "S15M010_Main", "box_Vehicle_Controller_184.Usable", "box_CLOController_57.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_176_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|584815018", "584815018", "S15M010_Main", "box_Ordered_Output_176.Out", "box_MultipleOR_82.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_176_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_177()
  l0 = self.box_MultipleOR_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1473950555", "1473950555", "S15M010_Main", "box_Ordered_Output_176.Out", "box_MultipleOR_177.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_InteractionScriptMonitor_v2_182_AnimationStarted()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_182()
  l0 = self.box_InteractionScriptMonitor_v2_182
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1375709633", "1375709633", "S15M010_Main", "box_InteractionScriptMonitor_v2_182.AnimationStarted", "box_InteractionScriptMonitor_v2_182.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_182_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_Entity_185
  l0.Entity = self.Wrench
  l0.Destination = "9223372069285164045"
  l0 = self.box_InteractionScriptMonitor_v2_182
  l1 = self.box_Teleport_Entity_185
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|827990096", "827990096", "S15M010_Main", "box_InteractionScriptMonitor_v2_182.Disabled", "box_Teleport_Entity_185.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptMonitor_v2_182_InteractionStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_205()
  l0 = self.box_InteractionScriptMonitor_v2_182
  l1 = self.box_HackableController_v2_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1733683263", "1733683263", "S15M010_Main", "box_InteractionScriptMonitor_v2_182.InteractionStarted", "box_HackableController_v2_205.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_InteractionScriptController_163_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_193
  l0.HackableEntity = self.DriveAndTtalkVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|579444199", "579444199", "S15M010_Main", "box_InteractionScriptController_163.Enabled", "box_HackableController_v2_193.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_SetTimeOfDay_200_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1827245718"
  l0.Out = self.f_box_Get_Player_ID_76_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1819641171", "1819641171", "S15M010_Main", "box_SetTimeOfDay_200.Out", "box_Get_Player_ID_76.In", clone, l0)
  l0:In()
end
function export:f_box_InteractionScriptController_191_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_6
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010.Objectives.Objective030",
    item = "Objective",
    id = "355345"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|746083405", "746083405", "S15M010_Main", "box_InteractionScriptController_191.Enabled", "box_MissionMessageController_v3_6.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_InteractionScriptController_156_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1159667286"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_122_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_122_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1641796612", "1641796612", "S15M010_Main", "box_InteractionScriptController_156.Disabled", "box_Ordered_Output_122.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_133_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_123()
  l0 = self.box_MultipleOR_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|614995130", "614995130", "S15M010_Main", "box_Simple_Node_133.Out", "box_MultipleOR_123.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_AI_Buddy_Controller_161_IsFollowing()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_129
  l0.Pawn = self.Wrench
  l0.CheckNow = 1
  l0 = self.box_AI_Buddy_Controller_161
  l1 = self.box_PawnHealthMonitor_v3_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|954127947", "954127947", "S15M010_Main", "box_AI_Buddy_Controller_161.IsFollowing", "box_PawnHealthMonitor_v3_129.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_115_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_112()
  l0 = self.box_Security_Camera_Monitor_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1442723885", "1442723885", "S15M010_Main", "box_Ordered_Output_115.Out", "box_Security_Camera_Monitor_112.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_115_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_186
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|77741257", "77741257", "S15M010_Main", "box_Ordered_Output_115.Out", "box_Timer_v2_186.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_100_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|185332982"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_102_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_102_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1021035792", "1021035792", "S15M010_Main", "box_Ordered_Output_100.Out", "box_Ordered_Output_102.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_100_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S15M010_SCR_Main_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1077412613", "1077412613", "S15M010_Main", "box_Ordered_Output_100.Out", "box_S15M010_SCR_Main_108.SCR_RobotHeadTalking_In", clone, l0)
  l0:SCR_RobotHeadTalking_In()
end
function export:f_box_Ordered_Output_100_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S15M010_SCR_Main_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1650452670", "1650452670", "S15M010_Main", "box_Ordered_Output_100.Out", "box_S15M010_SCR_Main_105.SCR_RobotMoving", clone, l0)
  l0:SCR_RobotMoving()
end
function export:f_box_Ordered_Output_100_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S15M010_SCR_Main_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1160387303", "1160387303", "S15M010_Main", "box_Ordered_Output_100.Out", "box_S15M010_SCR_Main_103.SCR_RobotConveyorBlock", clone, l0)
  l0:SCR_RobotConveyorBlock()
end
function export:f_box_Ordered_Output_100_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S15M010_SCR_Main_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|124587358", "124587358", "S15M010_Main", "box_Ordered_Output_100.Out", "box_S15M010_SCR_Main_104.RobotReceptionist", clone, l0)
  l0:RobotReceptionist()
end
function export:f_box_Ordered_Output_100_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S15M010_SCR_Main_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|465743132", "465743132", "S15M010_Main", "box_Ordered_Output_100.Out", "box_S15M010_SCR_Main_107.SCR_RepairRobot", clone, l0)
  l0:SCR_RepairRobot()
end
function export:f_box_Ordered_Output_100_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372048132250614"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1026181365"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2036622412", "2036622412", "S15M010_Main", "box_Ordered_Output_100.Out", "box_InteractionScriptController_192.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_VisibilityController_v2_131_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372068251697728"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|114457963"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|2105217630", "2105217630", "S15M010_Main", "box_VisibilityController_v2_131.Hidden", "box_CollisionController_165.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_HackableController_v2_45_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_118
  l0.HackableEntity = "9223372056229363301"
  l0 = self.box_HackableController_v2_45
  l1 = self.box_HackableController_v2_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|414356976", "414356976", "S15M010_Main", "box_HackableController_v2_45.Enabled", "box_HackableController_v2_118.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:OnEnter_box_Mission_End_28()
  local l0
  l0 = self.box_Mission_End_28
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S15M010_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_MultipleOR_48()
end
function export:OnEnter_box_Escape_Gameplay_19()
  local l0
  l0 = self.box_Escape_Gameplay_19
  l0.Entity = "9223372046758922688"
  l0.Entity_AreaRadius = 110
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
end
function export:OnEnter_box_Multiple_AND_148()
end
function export:OnEnter_box_MyWorldObjectMonitorController_126()
end
function export:OnEnter_box_Security_Camera_Monitor_112()
  local l0
  l0 = self.box_Security_Camera_Monitor_112
  l0.CameraEntity = "9223372055812422005"
end
function export:OnEnter_box_MultipleOR_128()
end
function export:OnEnter_box_MultipleOR_91()
end
function export:OnEnter_box_TriggerMonitor_v2_175()
  local l0
  l0 = self.box_TriggerMonitor_v2_175
  l0.Trigger = "9223372069040881987"
end
function export:OnEnter_box_MultipleOR_123()
end
function export:OnEnter_box_MultipleOR_90()
end
function export:OnEnter_box_SecurityCamController_41()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372055812422005"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|827186052"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_41_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_HackableController_v2_205()
  local l0
  l0 = self.box_HackableController_v2_205
  l0.HackableEntity = "9223372056229363311"
end
function export:OnEnter_box_OnceOnly_v3_169()
end
function export:OnEnter_box_PlaySequence_v5_27()
  local l0
  l0 = self.box_PlaySequence_v5_27
  l0.SceneEntity = "9223372049118939869"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_conveyorbelt_src.seq"
  l0.EntityIn.Wrench_Var = self.Wrench
end
function export:OnEnter_box_VisibilityController_v2_50()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372066547995404"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@S15M010_Main|1027978266"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_98()
end
function export:OnEnter_box_Player_Proximity_Monitor_109()
  local l0
  l0 = self.box_Player_Proximity_Monitor_109
  l0.TargetEntity = "9223372052988754325"
  l0.Radius = 200
end
function export:OnEnter_box_Control_the_profiling_capabilities_of_a_player_64()
end
function export:OnEnter_box_MissionZone_74()
  local l0
  l0 = self.box_MissionZone_74
  l0.MissionArea = "9223372046758922688"
  l0.MissionLayer = "S15M010_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_178()
end
function export:OnEnter_box_DriveAndTalk_43()
  local l0
  l0 = self.box_DriveAndTalk_43
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Wrench
  l0.Conversation = "ConversationSetting.9223372049031992247"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.DriveAndTtalkVehicle
end
function export:OnEnter_box_MultipleOR_101()
end
function export:OnEnter_box_OnceOnly_v3_111()
end
function export:OnEnter_box_InteractionScriptMonitor_v2_70()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_70
  l0.InteractionScriptEntity = "9223372059919152320"
end
function export:OnEnter_box_MultipleOR_147()
end
function export:OnEnter_box_Interact_Gameplay_22()
  local l0
  l0 = self.box_Interact_Gameplay_22
  l0.Entity = "9223372059919152320"
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_MultipleOR_177()
end
function export:OnEnter_box_MultipleOR_82()
end
function export:OnEnter_box_InteractionScriptMonitor_v2_182()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_182
  l0.InteractionScriptEntity = "9223372059919152320"
end
function export:OnEnter_box_Vehicle_Failure_12()
  local l0
  l0 = self.box_Vehicle_Failure_12
  l0.VehicleEntity = self.DriveAndTtalkVehicle
  l0.Fail_IfUnusable = 1
  l0.Fail_IfStuck = 1
  l0.Unusable_FailReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "MissionFail",
    id = "693187"
  }
  l0.Stuck_FailReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "MissionFail",
    id = "693187"
  }
  l0.FaiIfUnloaded = 1
end
_compilerVersion = 4
