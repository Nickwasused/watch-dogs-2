export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIBuddyMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
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
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/S13M010/s13_m010_cin_rocketbromance.S13_M010_CIN_RocketBromance_Main.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = "2500"
  self.TBone = "9223372054956870391"
  self.TBoneVehicle = nil
  self.Josh = nil
  self.ProximityTrigger_ReachHackerspace = "9223372071013714470"
  self[12] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_12_Enter
  l0.Leave = self.f_12_Leave
  l0.Use = DummyFunction
  self[49] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[49]
  l0._graph = self
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[18] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_18_OnUserInPlace
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[31] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/S13M010/s13_m010_cin_rocketbromance.S13_M010_CIN_RocketBromance_Main.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = self.f_31_Out
  self[55] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[55]
  l0._graph = self
  l0.PreOut = self.f_55_PreOut
  l0.PostOut = DummyFunction
  self[8] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[8]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_8_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[19] = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = self.f_19_Started
  l0.Stopped = DummyFunction
  l0.Reached = self.f_19_Reached
  self[25] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_25_TeleportDone
  self[33] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = self.f_33_Enabled
  l0.Disabled = self.f_33_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_33_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[48] = cbox:CreateBox("domino/System/AIBuddyMonitor.lua")
  l0 = self[48]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnBuddyFollowing = DummyFunction
  l0.OnBuddyInCombat = DummyFunction
  l0.OnBuddyHasNoSeat = DummyFunction
  l0.OnBuddyCantReach = DummyFunction
  l0.OnBuddyNormalRange = DummyFunction
  l0.OnBuddyTooFarBarkRange = DummyFunction
  l0.OnBuddyTooFar = DummyFunction
  l0.OnBuddyTooFarUnspawnRange = self.f_48_OnBuddyTooFarUnspawnRange
  self[56] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_56_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[7] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.MessageCompleted = DummyFunction
  self[30] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[30]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_30_PostOut
  self[38] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[43] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[43]
  l0._graph = self
  l0.Enabled = self.f_43_Enabled
  l0.Disabled = self.f_43_Disabled
  l0.EnterRadius = self.f_43_EnterRadius
  l0.ExitRadius = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[14]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[20]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_20_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[47] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[47]
  l0._graph = self
  self[36] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Loaded = self.f_36_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[9] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_9_Disabled
  l0.EnterRadius = self.f_9_EnterRadius
  l0.ExitRadius = DummyFunction
  self[22] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[22]
  l0._graph = self
  self[13] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_13_Out
  self[53] = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self[53]
  l0._graph = self
  l0.EntityUnspawned = self.f_53_EntityUnspawned
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self[57] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[57]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_57_PostOut
  self[3] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
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
  l0 = self[4]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[36]
  l0.LayerName = "S13M010_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:en_22()
  l0 = self[22]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[4]
  l0:Input(0)
end
function export:f_12_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0:In()
end
function export:f_12_Leave()
  local l0
  self = self._graph
  l0 = self[14]
  l0.MapPoint = "9223372046892574366"
  l0:Show()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S13M010_Main"
  l0:Load()
end
function export:f_18_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[18]
  self.TBoneVehicle = l0.UserID
  l0 = self[13]
  l0:Condition(1)
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[25]
  l0.SpawnPoint = "9223372059393940127"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_55_PreOut()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_8_OnCommunicationFinished()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Enable()
end
function export:f_19_Reached()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_19_Started()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M010.Objectives.Objective010",
    item = "Objective",
    id = "402957"
  }
  l0:ShowNewObjective()
end
function export:f_25_TeleportDone()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_33_Disabled()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:Disable()
end
function export:f_33_Enabled()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:Enable()
end
function export:f_33_Killed()
  local l0
  self = self._graph
  l0 = self[47]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyKilled",
    id = "689089"
  }
  l0:Fail()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[31]
  l0:In()
end
function export:f_48_OnBuddyTooFarUnspawnRange()
  local l0
  self = self._graph
  l0 = self[49]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyAbandoned",
    id = "605440"
  }
  l0:Fail()
end
function export:f_56_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Entity = self.TBone
  l0:UnspawnEntity()
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  l0 = self[20]
  l0.MapPoint = "9223372046892574366"
  l0:Hide()
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:f_15_Out()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:Enable()
end
function export:f_30_PostOut()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Entity = "9223372046892574366"
  l0.Entity_AreaRadius = 0
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Start()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_43_Disabled()
  local l0
  self = self._graph
  l0 = self[8]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050209878537"
  l0:StartCommunication()
end
function export:f_43_Enabled()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Enable()
end
function export:f_43_EnterRadius()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:Disable()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 4
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:SetTimeOfDay()
end
function export:f_20_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_50_Out_0
  l0.Out[1] = self.f_50_Out_1
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[6]
  l0:Input(1)
end
function export:f_36_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_40_Out
  l0:In()
end
function export:f_9_Disabled()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.TBone
  l0.Conversation = "ConversationSetting.9223372050209878536"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.TBoneVehicle
  l0:Start()
end
function export:f_9_EnterRadius()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = self[3]
  l0.CLO = "9223372046892573800"
  l0:Activate()
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  l0 = self[18]
  l0.CLO = "9223372046892573802"
  l0:Activate()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[30]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_53_EntityUnspawned()
  local l0
  self = self._graph
  l0 = self[57]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_50_Out_0()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Disable()
end
function export:f_50_Out_1()
  local l0
  self = self._graph
  l0 = self[55]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_57_PostOut()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:End()
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.TBone = l0.UserID
  l0 = self[13]
  l0:Condition(0)
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.Trigger = self.ProximityTrigger_ReachHackerspace
  l0.CheckNow = 1
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.Pawn = self.TBone
end
function export:en_48()
  local l0
  l0 = self[48]
  l0.BuddyNPC = self.TBone
end
function export:en_43()
  local l0
  l0 = self[43]
  l0.Entity1 = "9223372046892574366"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 3000
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.Entity1 = "9223372046892574366"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 800
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S13M010_Main"
  l0.ShowMissionComplete = 1
end
_compilerVersion = 4
