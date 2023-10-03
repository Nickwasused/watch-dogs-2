export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerPostFXController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/3381059633.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3035919121.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4257003710.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1619773489.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3203099314.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self[21] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[12] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[20] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = self.f_20_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[6] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_6_Deactivated
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
  self[5] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[5]
  l0._graph = self
  l0.PreOut = self.f_5_PreOut
  l0.PostOut = DummyFunction
  self[18] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[16] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[11] = cbox:CreateBox("domino/System/PlayerPostFXController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Played = DummyFunction
  l0.Stopped = DummyFunction
  self[26] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_26_Deactivated
  self[22] = cbox:CreateBox("domino/System/PlayerPostFXController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Played = DummyFunction
  l0.Stopped = DummyFunction
  self[14] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[9] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[10] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_10_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_10_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[8] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:PostIOP()
  local l0
  l0 = self[14]
  l0.SoundId = "soundbinary/3035919121.bnk"
  l0:Play()
end
function export:PreIOP()
  local l0
  l0 = self[8]
  l0.SoundId = "soundbinary/3381059633.bnk"
  l0:Play()
end
function export:f_12_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[20]
  l0.SoundId = "soundbinary/4257003710.bnk"
  l0:Play()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SoundId = "soundbinary/3203099314.bnk"
  l0:Play()
end
function export:f_6_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = nil
  l0.VideoDbObject = "Videos.9223372059535128794"
  l0.ExternalSoundId = nil
  l0.OnSkipSoundId = nil
  l0.Seconds = nil
  l0.CanBeSkip = nil
  l0.NoActionMap = nil
  l0.EnableAlpha = nil
  l0.UseSubtitle = nil
  l0.PlayEmbeddedAudio = nil
  l0.PauseGame = nil
  l0.OverrideSubtitle = nil
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  l0:Start()
end
function export:f_17_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_4_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_5_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = nil
  l0.VideoDbObject = "Videos.9223372059535128795"
  l0.ExternalSoundId = nil
  l0.OnSkipSoundId = nil
  l0.Seconds = nil
  l0.CanBeSkip = nil
  l0.NoActionMap = nil
  l0.EnableAlpha = nil
  l0.UseSubtitle = nil
  l0.PlayEmbeddedAudio = nil
  l0.PauseGame = nil
  l0.OverrideSubtitle = nil
  l0._graph = self
  l0.Started = self.f_2_Started
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = self.f_2_Finished
  l0:Start()
end
function export:f_2_Finished()
  local l0
  self = self._graph
  l0 = self[16]
  l0.SoundId = "soundbinary/4257003710.bnk"
  l0:Play()
end
function export:f_2_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_15_Out_0
  l0.Out[1] = self.f_15_Out_1
  l0:In()
end
function export:f_26_Deactivated()
  self = self._graph
  self:Out()
end
function export:f_24_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_19_Out_0
  l0.Out[1] = self.f_19_Out_1
  l0:In()
end
function export:f_4_Pushed()
  local l0
  self = self._graph
  self:en_7()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_25_Shown()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Deactivate()
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0.SequenceName = "blackscreen_loop_nofade"
  l0:StartPostFX()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Deactivate()
end
function export:f_23_Out_0()
  local l0
  self = self._graph
  l0 = self[22]
  l0.SequenceName = "blackscreen_loop_nofade"
  l0:StopPostFX()
end
function export:f_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_25_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_3_Popped()
  self = self._graph
  self:Out()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_24_Hidden
  l0:Hide()
end
function export:f_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_3_Popped
  l0:Pop()
end
function export:f_15_Out_1()
  local l0
  self = self._graph
  l0 = self[18]
  l0.SoundId = "soundbinary/1619773489.bnk"
  l0:Play()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_19_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Start()
end
function export:f_19_Out_1()
  local l0
  self = self._graph
  l0 = self[21]
  l0.SoundId = "soundbinary/1619773489.bnk"
  l0:Play()
end
function export:f_10_Disabled()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Seconds = 1
  l0:Start()
end
function export:f_10_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_7_CanExitSet()
  local l0
  self = self._graph
  self:en_7()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetInitialTarget()
end
function export:f_7_EnterForced()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_7_InitialTargetSet()
  local l0
  self = self._graph
  self:en_7()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.CameraEntity = self.Camera
end
function export:en_7()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.Camera
  l0.CameraEntityList = nil
  l0.TargetEntity = self.Target
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_7_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_7_EnterForced
  l0.InitialTargetSet = self.f_7_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:Out()
end
_compilerVersion = 4
