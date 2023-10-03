export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Player = nil
  self.Marcus = nil
  self[23] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_23_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_19_Out
  self[18] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = self.f_18_Enabled
  l0.Disabled = self.f_18_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_18_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[25] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_25_OnUserInPlace
  self[1] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[8] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = self.f_8_Enabled
  l0.Disabled = self.f_8_Disabled
  l0.OnStartAccessCamera = self.f_8_OnStartAccessCamera
  l0.OnEndAccessCamera = self.f_8_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[24] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[24]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_24_PostOut
  self[9] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Loaded = self.f_9_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[5]
  l0._graph = self
  l0.StartCommunicationOut = self.f_5_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[7]
  l0._graph = self
  self[20] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[20]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_3_Out
  self[26] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_26_Deactivated
  l0.UnspawnedUser = self.f_26_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[10] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[17] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_11_Unloaded
  l0.Reseted = DummyFunction
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
  l0 = self[3]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[3]
  l0:Input(0)
end
function export:f_23_TimeElapsed()
  local l0
  self = self._graph
  self:en_6()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Succeed()
end
function export:f_18_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = nil
  l0.VideoDbObject = "Videos.9223372055379098967"
  l0.ExternalSoundId = nil
  l0.OnSkipSoundId = nil
  l0.Seconds = nil
  l0.CanBeSkip = nil
  l0.NoActionMap = nil
  l0.EnableAlpha = 1
  l0.UseSubtitle = nil
  l0.PlayEmbeddedAudio = nil
  l0.PauseGame = nil
  l0.OverrideSubtitle = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = self.f_21_Finished
  l0:Start()
end
function export:f_18_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_22_Out_0
  l0.Out[1] = self.f_22_Out_1
  l0:In()
end
function export:f_18_OnStartExitCamera()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_4_Started()
  local l0
  self = self._graph
  l0 = self[25]
  l0.CLO = "9223372078048929983"
  l0:Activate()
end
function export:f_25_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[25]
  self.Marcus = l0.UserID
end
function export:f_13_Shown()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Condition(1)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:In()
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Seconds = 9
  l0:Start()
end
function export:f_8_Enabled()
  local l0
  self = self._graph
  self:en_2()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_8_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_8_OnStartAccessCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Player
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_15_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_24_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_13_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_9_Loaded()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CheckpointList = "CheckPoint_0"
  l0:In()
end
function export:f_16_Shown()
  local l0
  self = self._graph
  l0 = self[5]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372078027647761"
  l0:StartCommunication()
end
function export:f_5_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[11]
  l0.LayerName = "Shuffler_Dimension_Main"
  l0:Unload()
end
function export:f_21_Finished()
  local l0
  self = self._graph
  l0 = self[24]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.LayerName = "Shuffler_Dimension_Main"
  l0:Load()
end
function export:f_15_Hidden()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Seconds = 1
  l0:Start()
end
function export:f_26_Deactivated()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:UnspawnUser()
end
function export:f_26_UnspawnedUser()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Player
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_16_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_10_TimeElapsed()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_6_CanExitSet()
  local l0
  self = self._graph
  self:en_6()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceUserOutOfCamera()
end
function export:f_6_UserForcedOutOfCamera()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:Deactivate()
end
function export:f_22_Out_0()
  local l0
  self = self._graph
  l0 = self[20]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_22_Out_1()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Seconds = 2
  l0:Start()
end
function export:f_17_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = nil
  l0.VideoDbObject = "Videos.9223372055379098967"
  l0.ExternalSoundId = nil
  l0.OnSkipSoundId = nil
  l0.Seconds = nil
  l0.CanBeSkip = nil
  l0.NoActionMap = nil
  l0.EnableAlpha = 1
  l0.UseSubtitle = nil
  l0.PlayEmbeddedAudio = nil
  l0.PauseGame = nil
  l0.OverrideSubtitle = nil
  l0._graph = self
  l0.Started = self.f_4_Started
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  l0:Start()
end
function export:f_11_Unloaded()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Condition(0)
end
function export:f_2_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0:Hide()
end
function export:f_2_EnterForced()
  local l0
  self = self._graph
  self:en_2()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.CameraEntity = "9223372077945820965"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.CameraEntity = "9223372077945820965"
end
function export:en_26()
  local l0
  l0 = self[26]
  l0.CLO = "9223372078048929983"
  l0.User = self.Marcus
end
function export:en_6()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_6_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_6_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_2()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372077945820965"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_2_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_2_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
_compilerVersion = 4
