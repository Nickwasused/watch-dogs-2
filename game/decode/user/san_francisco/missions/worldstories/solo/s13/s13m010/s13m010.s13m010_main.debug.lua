export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIBuddyMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/S13M010/s13_m010_cin_rocketbromance.S13_M010_CIN_RocketBromance_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S13M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main"
  self.PlayerEntity = "2500"
  self.TBone = "9223372054956870391"
  self.TBoneVehicle = nil
  self.Josh = nil
  self.ProximityTrigger_ReachHackerspace = "9223372071013714470"
  self.box_TriggerMonitor_v2_12 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_12
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|113560498"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_12_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_12_Leave
  l0.Use = DummyFunction
  self.box_MissionController_v4_49 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_49
  l0._graph = self
  l0._name = "box_MissionController_v4_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|149071711"
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|331960094"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_CLOController_18 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_18
  l0._graph = self
  l0._name = "box_CLOController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|422325404"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_18_OnUserInPlace
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|432109545"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_S13_M010_CIN_RocketBromance_Main_31 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/S13M010/s13_m010_cin_rocketbromance.S13_M010_CIN_RocketBromance_Main.debug.lua")
  l0 = self.box_S13_M010_CIN_RocketBromance_Main_31
  l0._graph = self
  l0._name = "box_S13_M010_CIN_RocketBromance_Main_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|474808618"
  l0.Out = self.f_box_S13_M010_CIN_RocketBromance_Main_31_Out
  self.box_CinematicPrep_55 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_55
  l0._graph = self
  l0._name = "box_CinematicPrep_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|557177426"
  l0.PreOut = self.f_box_CinematicPrep_55_PreOut
  l0.PostOut = DummyFunction
  self.box_PhoneCommunicationController_8 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_8
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|565113382"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_8_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Reach_Gameplay_19 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_19
  l0._graph = self
  l0._name = "box_Reach_Gameplay_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|646017278"
  l0.Started = self.f_box_Reach_Gameplay_19_Started
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_Reach_Gameplay_19_Reached
  self.box_Teleport_To_SpawnPoint_25 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_25
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|700444016"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_25_TeleportDone
  self.box_PawnHealthMonitor_v3_33 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_33
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|809864795"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_33_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_33_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_33_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_AI_Buddy_Monitor_48 = cbox:CreateBox("domino/System/AIBuddyMonitor.lua")
  l0 = self.box_AI_Buddy_Monitor_48
  l0._graph = self
  l0._name = "box_AI_Buddy_Monitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|928807078"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnBuddyFollowing = DummyFunction
  l0.OnBuddyInCombat = DummyFunction
  l0.OnBuddyHasNoSeat = DummyFunction
  l0.OnBuddyCantReach = DummyFunction
  l0.OnBuddyNormalRange = DummyFunction
  l0.OnBuddyTooFarBarkRange = DummyFunction
  l0.OnBuddyTooFar = DummyFunction
  l0.OnBuddyTooFarUnspawnRange = self.f_box_AI_Buddy_Monitor_48_OnBuddyTooFarUnspawnRange
  self.box_Timer_v2_56 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_56
  l0._graph = self
  l0._name = "box_Timer_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|968866691"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_56_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_DriveAndTalk_7 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_7
  l0._graph = self
  l0._name = "box_DriveAndTalk_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|990040270"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionMessageController_v3_15 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1009701245"
  l0.Out = self.f_box_MissionMessageController_v3_15_Out
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_30 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_30
  l0._graph = self
  l0._name = "box_CinematicPrep_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1029429069"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_30_PostOut
  self.box_MissionCheckpointReach_38 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_38
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1072285808"
  l0.Out = self.f_box_MissionCheckpointReach_38_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Proximity_Monitor_43 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_43
  l0._graph = self
  l0._name = "box_Proximity_Monitor_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1213505605"
  l0.Enabled = self.f_box_Proximity_Monitor_43_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_43_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_43_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_MissionCheckpointReach_5 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_5
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1299651097"
  l0.Out = self.f_box_MissionCheckpointReach_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MapPointController_v4_14 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_14
  l0._graph = self
  l0._name = "box_MapPointController_v4_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1427467163"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v4_20 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_20
  l0._graph = self
  l0._name = "box_MapPointController_v4_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1502416880"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_20_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionController_v4_47 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_47
  l0._graph = self
  l0._name = "box_MissionController_v4_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1556785730"
  self.box_MissionLayer_v2_36 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_36
  l0._graph = self
  l0._name = "box_MissionLayer_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1573003708"
  l0.Loaded = self.f_box_MissionLayer_v2_36_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Proximity_Monitor_9 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_9
  l0._graph = self
  l0._name = "box_Proximity_Monitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1606253002"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_9_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_9_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_Mission_End_22 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_22
  l0._graph = self
  l0._name = "box_Mission_End_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1840201873"
  self.box_Multiple_AND_13 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_13
  l0._graph = self
  l0._name = "box_Multiple_AND_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1899200166"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_13_Out
  self.box_UnspawnController_53 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_53
  l0._graph = self
  l0._name = "box_UnspawnController_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1908044244"
  l0.EntityUnspawned = self.f_box_UnspawnController_53_EntityUnspawned
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self.box_CinematicPrep_57 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_57
  l0._graph = self
  l0._name = "box_CinematicPrep_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|2056915461"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_57_PostOut
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|2075341086"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
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
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1144004094", "1144004094", "S13M010_Main", "CheckPoint_0", "box_MultipleOR_4.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_36
  l0.LayerName = "S13M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1488038637", "1488038637", "S13M010_Main", "CheckPoint_1", "box_MissionLayer_v2_36.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_Mission_End_22()
  l0 = self.box_Mission_End_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|990020529", "990020529", "S13M010_Main", "CheckPoint_2", "box_Mission_End_22.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|2128071850", "2128071850", "S13M010_Main", "In", "box_MultipleOR_4.Input", self, l0)
  l0:Input(0)
end
function export:f_box_TriggerMonitor_v2_12_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|976505372"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0 = self.box_TriggerMonitor_v2_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|284291211", "284291211", "S13M010_Main", "box_TriggerMonitor_v2_12.Enter", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_12_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_14
  l0.MapPoint = "9223372046892574366"
  l0 = self.box_TriggerMonitor_v2_12
  l1 = self.box_MapPointController_v4_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1785662724", "1785662724", "S13M010_Main", "box_TriggerMonitor_v2_12.Leave", "box_MapPointController_v4_14.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_38
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_MissionCheckpointReach_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|464144502", "464144502", "S13M010_Main", "box_MissionLayer_v2_2.Loaded", "box_MissionCheckpointReach_38.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S13M010_Main"
  l0 = self.box_MultipleOR_4
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1151255602", "1151255602", "S13M010_Main", "box_MultipleOR_4.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_CLOController_18_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_18
  self.TBoneVehicle = l0.UserID
  self:OnEnter_box_Multiple_AND_13()
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1370554950", "1370554950", "S13M010_Main", "box_CLOController_18.OnUserInPlace", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_5
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_6
  l1 = self.box_MissionCheckpointReach_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1956293147", "1956293147", "S13M010_Main", "box_MultipleOR_6.Out", "box_MissionCheckpointReach_5.In", l0, l1)
  l1:In()
end
function export:f_box_S13_M010_CIN_RocketBromance_Main_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_25
  l0.SpawnPoint = "9223372059393940127"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_S13_M010_CIN_RocketBromance_Main_31
  l1 = self.box_Teleport_To_SpawnPoint_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|2033365326", "2033365326", "S13M010_Main", "box_S13_M010_CIN_RocketBromance_Main_31.Out", "box_Teleport_To_SpawnPoint_25.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_55_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_56
  l0.Seconds = 0.5
  l0 = self.box_CinematicPrep_55
  l1 = self.box_Timer_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|2080550393", "2080550393", "S13M010_Main", "box_CinematicPrep_55.PreOut", "box_Timer_v2_56.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_8_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_9()
  l0 = self.box_PhoneCommunicationController_8
  l1 = self.box_Proximity_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|635278836", "635278836", "S13M010_Main", "box_PhoneCommunicationController_8.OnCommunicationFinished", "box_Proximity_Monitor_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Reach_Gameplay_19_Reached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_12()
  l0 = self.box_Reach_Gameplay_19
  l1 = self.box_TriggerMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|658532014", "658532014", "S13M010_Main", "box_Reach_Gameplay_19.Reached", "box_TriggerMonitor_v2_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Reach_Gameplay_19_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_15
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M010.Objectives.Objective010",
    item = "Objective",
    id = "402957"
  }
  l0 = self.box_Reach_Gameplay_19
  l1 = self.box_MissionMessageController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|116980873", "116980873", "S13M010_Main", "box_Reach_Gameplay_19.Started", "box_MissionMessageController_v3_15.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Teleport_To_SpawnPoint_25_TeleportDone()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_Teleport_To_SpawnPoint_25
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1175137717", "1175137717", "S13M010_Main", "box_Teleport_To_SpawnPoint_25.TeleportDone", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PawnHealthMonitor_v3_33_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AI_Buddy_Monitor_48()
  l0 = self.box_PawnHealthMonitor_v3_33
  l1 = self.box_AI_Buddy_Monitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|173469694", "173469694", "S13M010_Main", "box_PawnHealthMonitor_v3_33.Disabled", "box_AI_Buddy_Monitor_48.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PawnHealthMonitor_v3_33_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AI_Buddy_Monitor_48()
  l0 = self.box_PawnHealthMonitor_v3_33
  l1 = self.box_AI_Buddy_Monitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|26676607", "26676607", "S13M010_Main", "box_PawnHealthMonitor_v3_33.Enabled", "box_AI_Buddy_Monitor_48.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PawnHealthMonitor_v3_33_Killed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_47
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyKilled",
    id = "689089"
  }
  l0 = self.box_PawnHealthMonitor_v3_33
  l1 = self.box_MissionController_v4_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|291168433", "291168433", "S13M010_Main", "box_PawnHealthMonitor_v3_33.Killed", "box_MissionController_v4_47.Fail", l0, l1)
  l1:Fail()
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
  l0 = self.box_S13_M010_CIN_RocketBromance_Main_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1845370870", "1845370870", "S13M010_Main", "box_Get_Player_ID_1.Out", "box_S13_M010_CIN_RocketBromance_Main_31.In", clone, l0)
  l0:In()
end
function export:f_box_AI_Buddy_Monitor_48_OnBuddyTooFarUnspawnRange()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_49
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyAbandoned",
    id = "605440"
  }
  l0 = self.box_AI_Buddy_Monitor_48
  l1 = self.box_MissionController_v4_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1443003165", "1443003165", "S13M010_Main", "box_AI_Buddy_Monitor_48.OnBuddyTooFarUnspawnRange", "box_MissionController_v4_49.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_Timer_v2_56_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_UnspawnController_53
  l0.Entity = self.TBone
  l0 = self.box_Timer_v2_56
  l1 = self.box_UnspawnController_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|465617716", "465617716", "S13M010_Main", "box_Timer_v2_56.TimeElapsed", "box_UnspawnController_53.UnspawnEntity", l0, l1)
  l1:UnspawnEntity()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_20
  l0.MapPoint = "9223372046892574366"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|625133481", "625133481", "S13M010_Main", "box_Ordered_Output_21.Out", "box_MapPointController_v4_20.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_12()
  l0 = self.box_TriggerMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1662780346", "1662780346", "S13M010_Main", "box_Ordered_Output_21.Out", "box_TriggerMonitor_v2_12.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_43()
  l0 = self.box_MissionMessageController_v3_15
  l1 = self.box_Proximity_Monitor_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|454026508", "454026508", "S13M010_Main", "box_MissionMessageController_v3_15.Out", "box_Proximity_Monitor_43.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CinematicPrep_30_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Reach_Gameplay_19
  l0.Entity = "9223372046892574366"
  l0.Entity_AreaRadius = 0
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_CinematicPrep_30
  l1 = self.box_Reach_Gameplay_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|701209184", "701209184", "S13M010_Main", "box_CinematicPrep_30.PostOut", "box_Reach_Gameplay_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_38_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionCheckpointReach_38
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|858414721", "858414721", "S13M010_Main", "box_MissionCheckpointReach_38.Out", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_43_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_8
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050209878537"
  l0 = self.box_Proximity_Monitor_43
  l1 = self.box_PhoneCommunicationController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|327442390", "327442390", "S13M010_Main", "box_Proximity_Monitor_43.Disabled", "box_PhoneCommunicationController_8.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Proximity_Monitor_43_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_33()
  l0 = self.box_Proximity_Monitor_43
  l1 = self.box_PawnHealthMonitor_v3_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|933084768", "933084768", "S13M010_Main", "box_Proximity_Monitor_43.Enabled", "box_PawnHealthMonitor_v3_33.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_43_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_43()
  l0 = self.box_Proximity_Monitor_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|173558370", "173558370", "S13M010_Main", "box_Proximity_Monitor_43.EnterRadius", "box_Proximity_Monitor_43.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 4
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1522561686"
  l0.Out = self.f_box_SetTimeOfDay_10_Out
  l0 = self.box_MissionCheckpointReach_5
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|883052200", "883052200", "S13M010_Main", "box_MissionCheckpointReach_5.Out", "box_SetTimeOfDay_10.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_MapPointController_v4_20_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1925710336"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_50_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_50_Out_1
  l0 = self.box_MapPointController_v4_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|8881049", "8881049", "S13M010_Main", "box_MapPointController_v4_20.Hidden", "box_Ordered_Output_50.In", l0, l1)
  l1:In()
end
function export:f_box_SetTimeOfDay_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1873487466"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|797961004", "797961004", "S13M010_Main", "box_SetTimeOfDay_10.Out", "box_Ordered_Output_17.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|2087600914", "2087600914", "S13M010_Main", "box_Get_Player_ID_40.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionLayer_v2_36_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1529690633"
  l0.Out = self.f_box_Get_Player_ID_40_Out
  l0 = self.box_MissionLayer_v2_36
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|184776086", "184776086", "S13M010_Main", "box_MissionLayer_v2_36.Loaded", "box_Get_Player_ID_40.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_9_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_7
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.TBone
  l0.Conversation = "ConversationSetting.9223372050209878536"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.TBoneVehicle
  l0 = self.box_Proximity_Monitor_9
  l1 = self.box_DriveAndTalk_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1337736524", "1337736524", "S13M010_Main", "box_Proximity_Monitor_9.Disabled", "box_DriveAndTalk_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_Proximity_Monitor_9_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_9()
  l0 = self.box_Proximity_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1792347226", "1792347226", "S13M010_Main", "box_Proximity_Monitor_9.EnterRadius", "box_Proximity_Monitor_9.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_3
  l0.CLO = "9223372046892573800"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1522115575", "1522115575", "S13M010_Main", "box_Ordered_Output_17.Out", "box_CLOController_3.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_18
  l0.CLO = "9223372046892573802"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1532849347", "1532849347", "S13M010_Main", "box_Ordered_Output_17.Out", "box_CLOController_18.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Multiple_AND_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_30
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Multiple_AND_13
  l1 = self.box_CinematicPrep_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1739076060", "1739076060", "S13M010_Main", "box_Multiple_AND_13.Out", "box_CinematicPrep_30.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_UnspawnController_53_EntityUnspawned()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_57
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_UnspawnController_53
  l1 = self.box_CinematicPrep_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1659861589", "1659861589", "S13M010_Main", "box_UnspawnController_53.EntityUnspawned", "box_CinematicPrep_57.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_50_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_33()
  l0 = self.box_PawnHealthMonitor_v3_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1397293681", "1397293681", "S13M010_Main", "box_Ordered_Output_50.Out", "box_PawnHealthMonitor_v3_33.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_50_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_55
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1110748865", "1110748865", "S13M010_Main", "box_Ordered_Output_50.Out", "box_CinematicPrep_55.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_57_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_22()
  l0 = self.box_CinematicPrep_57
  l1 = self.box_Mission_End_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1839339710", "1839339710", "S13M010_Main", "box_CinematicPrep_57.PostOut", "box_Mission_End_22.End", l0, l1)
  l1:End()
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.TBone = l0.UserID
  self:OnEnter_box_Multiple_AND_13()
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M010\\S13M010.domino|@S13M010_Main|1113432119", "1113432119", "S13M010_Main", "box_CLOController_3.OnUserInPlace", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(0)
end
function export:OnEnter_box_TriggerMonitor_v2_12()
  local l0
  l0 = self.box_TriggerMonitor_v2_12
  l0.Trigger = self.ProximityTrigger_ReachHackerspace
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_PawnHealthMonitor_v3_33()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_33
  l0.Pawn = self.TBone
end
function export:OnEnter_box_AI_Buddy_Monitor_48()
  local l0
  l0 = self.box_AI_Buddy_Monitor_48
  l0.BuddyNPC = self.TBone
end
function export:OnEnter_box_Proximity_Monitor_43()
  local l0
  l0 = self.box_Proximity_Monitor_43
  l0.Entity1 = "9223372046892574366"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 3000
end
function export:OnEnter_box_Proximity_Monitor_9()
  local l0
  l0 = self.box_Proximity_Monitor_9
  l0.Entity1 = "9223372046892574366"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 800
end
function export:OnEnter_box_Mission_End_22()
  local l0
  l0 = self.box_Mission_End_22
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S13M010_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Multiple_AND_13()
end
_compilerVersion = 4
