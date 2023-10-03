export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M020/s02m020_cin_sitaraprotesting.S02M020_CIN_SitaraProtesting_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M020/s02m020_scr.S02M020_SCR_Main.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:LoadResource("soundbinary/1357385916.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4106765114.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Number_of_Targets = 0
  self.String_number_of_targets_left = ""
  self.BackDoor = "9223372051887121919"
  self.FrontDoor = "9223372053484938575"
  self.HintTriggerList = {}
  self.Sitara = nil
  self[56] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_56_Disabled
  l0.Enter = self.f_56_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[67] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[67]
  l0._graph = self
  l0.Activated = self.f_67_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[41] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[10] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_10_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_5_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self[51] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[69] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[69]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_69_Out
  l0.ResetOut = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_4_Unloaded
  l0.Reseted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[32] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[32]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_32_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[71] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = self.f_71_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[30] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[73] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[73]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_73_Out
  self[72] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[72]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_72_Out
  self[65] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[65]
  l0._graph = self
  l0.Activated = self.f_65_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[61] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[61]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_61_OnUserInPlace
  self[9] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[40] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M020/s02m020_cin_sitaraprotesting.S02M020_CIN_SitaraProtesting_Main.lua")
  l0 = self[40]
  l0._graph = self
  l0.EndCine = self.f_40_EndCine
  self[39] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Loaded = self.f_39_Loaded
  l0.Unloaded = DummyFunction
  self[48] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[48]
  l0._graph = self
  l0.Activated = self.f_48_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[50] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[50]
  l0._graph = self
  l0.Activated = self.f_50_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.MessageCompleted = DummyFunction
  self[66] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[66]
  l0._graph = self
  l0.Activated = self.f_66_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[38] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[38]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_38_Interacted
  self[54] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M020/s02m020_scr.S02M020_SCR_Main.lua")
  l0 = self[54]
  l0._graph = self
  self[16] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = self.f_16_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[36] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M020/s02m020_scr.S02M020_SCR_Main.lua")
  l0 = self[36]
  l0._graph = self
  self[64] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[64]
  l0._graph = self
  l0.Activated = self.f_64_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Loaded = self.f_22_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[59] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[59]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_59_Added
  l0.Removed = self.f_59_Removed
  l0.Out = self.f_59_Out
  self[21] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[21]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self[74] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[74]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = self.f_74_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[20] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[20]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_20_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[53] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_53_MessageCompleted
  self[34] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[34]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_34_Out
  l0.ResetOut = DummyFunction
  self[63] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[63]
  l0._graph = self
  l0.Activated = self.f_63_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_6_Escaped
  l0.LeftArea = self.f_6_LeftArea
  self[25] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0.MessageCompleted = DummyFunction
  self[26] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Enabled = self.f_26_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_26_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[8] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[8]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_8_PostOut
  self[49] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[49]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_49_OnUserInPlace
  self[55] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[55]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_55_PostOut
  self[23] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_23_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_23_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[17] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Activated = self.f_17_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[57] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = self.f_57_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[60] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[60]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_60_Out
  l0.ResetOut = DummyFunction
  self[18] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[18]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_18_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[70] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[70]
  l0._graph = self
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_3_MessageCompleted
  self[11] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
  self[62] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[62]
  l0._graph = self
  l0.Activated = self.f_62_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
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
  l0 = self[73]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[22]
  l0.LayerName = "S02M020_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self[8]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:In()
  local l0
  l0 = self[39]
  l0.LMALayerName = "SF_02_Recruitment_Center_LMA"
  l0:Load()
end
function export:f_56_Disabled()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:HideNotification()
end
function export:f_56_Enter()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:Disable()
end
function export:f_67_Activated()
  local l0
  self = self._graph
  l0 = self[64]
  l0.CLO = "9223372056396932849"
  l0:Activate()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.BackDoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_27_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveBackward()
end
function export:f_10_AllSpawned()
  local l0
  self = self._graph
  l0 = self[55]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_33_MovedBackward()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:DisableHack()
end
function export:f_5_DownloadCompleted()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:ShowNewObjective()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_52_Out_0
  l0.Out[1] = self.f_52_Out_1
  l0.Out[2] = self.f_52_Out_2
  l0:In()
end
function export:f_4_Unloaded()
  local l0
  self = self._graph
  l0 = self[21]
  l0.LMALayerName = "SF_02_Recruitment_Center_LMA"
  l0:Unload()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_32_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[20]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049814637192"
  l0:StartCommunication()
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346317"
  l0:StartCommunication()
end
function export:f_73_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S02M020_Main"
  l0:Load()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Checkpoint = "CheckPoint_2"
  l0:In()
end
function export:f_65_Activated()
  local l0
  self = self._graph
  l0 = self[67]
  l0.CLO = "9223372056396932850"
  l0:Activate()
end
function export:f_19_Out_0()
  local l0
  self = self._graph
  l0 = self[36]
  l0:In()
end
function export:f_19_Out_1()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:EnableProfiling()
end
function export:f_61_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[49]
  l0.CLO = "9223372055971180907"
  l0:Activate()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0:In()
end
function export:f_40_EndCine()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_68_Out
  l0:UnsetImmune()
end
function export:f_39_Loaded()
  local l0
  self = self._graph
  l0 = self[73]
  l0:Input(0)
end
function export:f_48_Activated()
  local l0
  self = self._graph
  l0 = self[61]
  l0.CLO = "9223372056396932842"
  l0:Activate()
end
function export:f_50_Activated()
  local l0
  self = self._graph
  l0 = self[48]
  l0.CLO = "9223372056396932838"
  l0:Activate()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[9]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(0)
end
function export:f_66_Activated()
  local l0
  self = self._graph
  l0 = self[17]
  l0.CLO = "9223372056396932845"
  l0:Activate()
end
function export:f_38_Interacted()
  local l0
  self = self._graph
  l0 = self[5]
  l0.TargetEntity = "9223372049604406460"
  l0.LinkedObjective = "Objective"
  l0.Duration = 50
  l0.OverridedRadius = 10
  l0.DownloadingText = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.CustomRatio = 0.5
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 1
  l0.Affiliation = "UZulu"
  l0.AutoDetectDownload = 1
  l0:Start()
end
function export:f_16_Enabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0.PGTMissionArea = "9223372046596146922"
  l0:Start()
end
function export:f_27_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.FrontDoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_33_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveBackward()
end
function export:f_64_Activated()
  local l0
  self = self._graph
  l0 = self[50]
  l0.CLO = "9223372056396932853"
  l0:Activate()
end
function export:f_22_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:In()
end
function export:f_59_Added()
  local l0
  self = self._graph
  l0 = self[59]
  self.HintTriggerList = l0.Target
  self:en_56()
  l0 = self[56]
  l0:Enable()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[59]
  self.HintTriggerList = l0.Target
end
function export:f_59_Removed()
  local l0
  self = self._graph
  l0 = self[59]
  self.HintTriggerList = l0.Target
end
function export:f_52_Out_0()
  local l0
  self = self._graph
  l0 = self[54]
  l0:End_Broadcast()
end
function export:f_52_Out_1()
  local l0
  self = self._graph
  l0 = self[51]
  l0.Entity = "9223372062544709164"
  l0.SoundId = "soundbinary/4106765114.bnk"
  l0:Play()
end
function export:f_52_Out_2()
  local l0
  self = self._graph
  l0 = self[74]
  l0.PGTMissionArea = "9223372046596146922"
  l0:Abort()
end
function export:f_74_Aborted()
  local l0
  self = self._graph
  l0 = self[4]
  l0.LayerName = "S02M020_Main"
  l0:Unload()
end
function export:f_20_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[3]
  l0:ShowMissionComplete()
end
function export:f_53_MessageCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_19_Out_0
  l0.Out[1] = self.f_19_Out_1
  l0:In()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_63_Activated()
  local l0
  self = self._graph
  l0 = self[62]
  l0.CLO = "9223372056396932839"
  l0:Activate()
end
function export:f_6_Escaped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0:In()
end
function export:f_6_LeftArea()
  local l0
  self = self._graph
  l0 = self[69]
  l0:In(0)
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0:In(0)
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:HideObjective()
end
function export:f_35_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0:ShowLastObjectiveComplete()
end
function export:f_26_Enabled()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Entity = "9223372049604406460"
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_26_ProfilingEnabled()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:EnableHack()
end
function export:f_8_PostOut()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(1)
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Disable()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Entity = "9223372046915710298"
  l0.Entity_AreaRadius = 100
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
function export:f_49_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[49]
  self.Sitara = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_58_Out_0
  l0.Out[1] = self.f_58_Out_1
  l0.Out[2] = self.f_58_Out_2
  l0:In()
end
function export:f_55_PostOut()
  local l0
  self = self._graph
  l0 = self[18]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346316"
  l0:StartCommunication()
end
function export:f_23_Disabled()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:DisableProfiling()
end
function export:f_23_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Enable()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[11]
  l0:Input(1)
end
function export:f_17_Activated()
  local l0
  self = self._graph
  l0 = self[65]
  l0.CLO = "9223372056396932844"
  l0:Activate()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[60]
  l0:In(0)
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_58_Out_0()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Display()
end
function export:f_58_Out_1()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Input = self.HintTriggerList
  l0.Data[0] = "9223372069072413806"
  l0.Data[1] = "9223372069072413810"
  l0.Data[2] = "9223372069072413808"
  l0.Data[3] = "9223372069072413814"
  l0.Data[4] = "9223372069072413816"
  l0.Data[5] = "9223372069072413812"
  l0:Add()
end
function export:f_58_Out_2()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Entity = "9223372062544709164"
  l0.SoundId = "soundbinary/1357385916.bnk"
  l0:Play()
end
function export:f_18_OnCommunicationStarted()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M020.Objectives.Objective010",
    item = "Objective",
    id = "343695"
  }
  l0:ShowNewObjective()
end
function export:f_3_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Succeed()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[63]
  l0.CLO = "9223372056396932848"
  l0:Activate()
end
function export:f_62_Activated()
  local l0
  self = self._graph
  l0 = self[66]
  l0.CLO = "9223372056396932843"
  l0:Activate()
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:en_56()
  local l0
  l0 = self[56]
  l0.TriggerList = self.HintTriggerList
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.MissionArea = "9223372047839551907"
  l0.MissionLayer = "S02M020_Main"
  l0.LmaLayer = "SF_02_Recruitment_Center_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_25()
  local l0
  l0 = self[25]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M020.Objectives.Objective030",
    item = "Objective",
    id = "656953"
  }
  l0.HasObjectiveMarker = 0
end
function export:en_26()
  local l0
  l0 = self[26]
  l0.HackableEntity = "9223372052107082875"
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.HackableEntity = "9223372052107082875"
end
function export:en_57()
  local l0
  l0 = self[57]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M020.Objectives.Notification010",
    item = "Notification",
    id = "640629"
  }
  l0.Duration = -1
end
_compilerVersion = 4
