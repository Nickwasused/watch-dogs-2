export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialogWithSubtitle.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/1482453689.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/681903357.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1645337137.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/254597174.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1019298353.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3019176306.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1215157518.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3367330601.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.OutStopBlackOut = DummyFunction
  self.OutStartBlackOut = DummyFunction
  self.PlayerEntity = nil
  self.Sound_Point_CentralCommand_01 = "9223372071792028496"
  self.Sound_Point_CentralCommand_2 = "9223372071792028498"
  self.Sound_Point_CentralCommand_3 = "9223372071792028500"
  self[42] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[50] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[50]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_50_Started
  l0.Finished = self.f_50_Finished
  self[40] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_7_Finished
  self[2] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[24] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[21] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_21_Disabled
  l0.Enter = self.f_21_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[45] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[18] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[28] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_28_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[25] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[6] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_1_PostOut
  self[11] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[23] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[12] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"BlackOut"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_12_Finished
  l0.SPOut.BlackOut = self.f_12_SPOut__BlackOut_
  self[49] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_49_Started
  l0.Finished = self.f_49_Finished
  self[43] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[39] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_39_Finished
  self[8] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_8_Started
  l0.Finished = self.f_8_Finished
  self[22] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_22_Disabled
  l0.Enter = self.f_22_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[52] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[52]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_52_Started
  l0.Finished = self.f_52_Finished
  self[16] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_16_Disabled
  l0.Enter = self.f_16_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[14]
  l0._graph = self
  l0.PreOut = self.f_14_PreOut
  l0.PostOut = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = self[14]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:InStartBlackOut()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:INStopBlackOut()
  local l0
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = "9223372056399119996"
  l0.Radius = 35
  l0.PropagationSpeed = nil
  l0.RecoverySpeed = 5
  l0.Duration = nil
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = 1
  l0._graph = self
  l0.BlackoutStarted = DummyFunction
  l0.BlackoutStopped = self.f_4_BlackoutStopped
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = self.f_4_Out
  l0:StopBlackout()
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Entity = self.Sound_Point_CentralCommand_01
  l0.SoundId = "soundbinary/1215157518.bnk"
  l0:Play()
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Entity = self.Sound_Point_CentralCommand_2
  l0.SoundId = "soundbinary/1215157518.bnk"
  l0:Play()
end
function export:f_41_Out_2()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Entity = self.Sound_Point_CentralCommand_3
  l0.SoundId = "soundbinary/1215157518.bnk"
  l0:Play()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.SceneEntity = "9223372053647795590"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M040_SCR_MissionStart/s04_m040_scr_missionstart.seq"
  l0:Start()
end
function export:f_50_Finished()
  local l0
  self = self._graph
  self:en_29()
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0:ResetByIndex()
end
function export:f_50_Started()
  local l0
  self = self._graph
  self:en_29()
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0:SetByIndex()
end
function export:f_38_ByIndexReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372058075931914"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:ResetByIndex()
end
function export:f_40_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_47_Out_0
  l0.Out[1] = self.f_47_Out_1
  l0.Out[2] = self.f_47_Out_2
  l0:In()
end
function export:f_47_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Entity = self.Sound_Point_CentralCommand_01
  l0.SoundId = "soundbinary/681903357.bnk"
  l0:Play()
end
function export:f_47_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Entity = self.Sound_Point_CentralCommand_2
  l0.SoundId = "soundbinary/681903357.bnk"
  l0:Play()
end
function export:f_47_Out_2()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Entity = self.Sound_Point_CentralCommand_3
  l0.SoundId = "soundbinary/681903357.bnk"
  l0:Play()
end
function export:f_7_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_37_Out_0
  l0.Out[1] = self.f_37_Out_1
  l0:In()
end
function export:f_2_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0.Out[2] = self.f_41_Out_2
  l0:In()
end
function export:f_27_BackupStarted()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Seconds = 1
  l0:Start()
end
function export:f_27_BlackoutStarted()
  local l0
  self = self._graph
  self:en_27()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0:StartBackup()
end
function export:f_32_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372062631576795"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_33_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_21_Disabled()
  local l0
  self = self._graph
  l0 = self[50]
  l0.Entity = self.Sound_Point_CentralCommand_3
  l0.SoundId = "soundbinary/1019298353.bnk"
  l0:Play()
end
function export:f_21_Enter()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Disable()
end
function export:f_33_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372058075931914"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_26_Out_0()
  local l0
  self = self._graph
  self:en_27()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0:StartBlackout()
end
function export:f_26_Out_1()
  local l0
  self = self._graph
  l0 = self[18]
  l0.SoundId = "soundbinary/1482453689.bnk"
  l0:Play()
end
function export:f_4_BlackoutStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:f_4_Out()
  self = self._graph
  self:OutStopBlackOut()
end
function export:f_44_Out_0()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Entity = self.Sound_Point_CentralCommand_01
  l0.SoundId = "soundbinary/1645337137.bnk"
  l0:Play()
end
function export:f_44_Out_1()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Entity = self.Sound_Point_CentralCommand_2
  l0.SoundId = "soundbinary/1645337137.bnk"
  l0:Play()
end
function export:f_44_Out_2()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Entity = self.Sound_Point_CentralCommand_3
  l0.SoundId = "soundbinary/1645337137.bnk"
  l0:Play()
end
function export:f_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0.Out[2] = self.f_20_Out_2
  l0:In()
end
function export:f_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372058075932604"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = self.f_35_ByIndexReset
  l0.ParameterSet = DummyFunction
  l0:ResetByIndex()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Seconds = 3.5
  l0:Start()
end
function export:f_28_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[25]
  l0.SoundId = "soundbinary/3019176306.bnk"
  l0:Play()
end
function export:f_6_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_44_Out_0
  l0.Out[1] = self.f_44_Out_1
  l0.Out[2] = self.f_44_Out_2
  l0:In()
end
function export:f_1_PostOut()
  self = self._graph
  self:Out()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372063966592894"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_17_Out
  l0:CleanZone()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:In()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  self:en_9()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0:StartBlackout()
end
function export:f_35_ByIndexReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372062631576795"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = self.f_38_ByIndexReset
  l0.ParameterSet = DummyFunction
  l0:ResetByIndex()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Enable()
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Enable()
end
function export:f_20_Out_2()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Enable()
end
function export:f_13_Out()
  self = self._graph
  self:OutStartBlackOut()
end
function export:f_12_Finished()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_12_SPOut__BlackOut_()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_26_Out_0
  l0.Out[1] = self.f_26_Out_1
  l0:In()
end
function export:f_49_Finished()
  local l0
  self = self._graph
  self:en_30()
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0:ResetByIndex()
end
function export:f_49_Started()
  local l0
  self = self._graph
  self:en_30()
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0:SetByIndex()
end
function export:f_39_Finished()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_8_Finished()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_8_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372058075932604"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_32_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_22_Disabled()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Entity = self.Sound_Point_CentralCommand_3
  l0.SoundId = "soundbinary/3367330601.bnk"
  l0:Play()
end
function export:f_22_Enter()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Disable()
end
function export:f_52_Finished()
  local l0
  self = self._graph
  self:en_31()
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0:ResetByIndex()
end
function export:f_52_Started()
  local l0
  self = self._graph
  self:en_31()
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0:SetByIndex()
end
function export:f_9_BlackoutStarted()
  local l0
  self = self._graph
  self:en_9()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0:StartBackup()
end
function export:f_16_Disabled()
  local l0
  self = self._graph
  l0 = self[52]
  l0.Entity = self.Sound_Point_CentralCommand_2
  l0.SoundId = "soundbinary/254597174.bnk"
  l0:Play()
end
function export:f_16_Enter()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Disable()
end
function export:f_14_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053647796082"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:In()
end
function export:en_27()
  local l0
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = "9223372056399119996"
  l0.Radius = 35
  l0.PropagationSpeed = 35
  l0.RecoverySpeed = nil
  l0.Duration = -1
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = 1
  l0._graph = self
  l0.BlackoutStarted = self.f_27_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = self.f_27_BackupStarted
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
end
function export:en_30()
  local l0
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372069558625587"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.Trigger = "9223372050957537396"
  l0.AutoDisable = 1
end
function export:en_31()
  local l0
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372058075932602"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
end
function export:en_29()
  local l0
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372049886752296"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.Trigger = "9223372050957537404"
  l0.AutoDisable = 1
end
function export:en_9()
  local l0
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = "9223372056399119996"
  l0.Radius = 35
  l0.PropagationSpeed = 35
  l0.RecoverySpeed = nil
  l0.Duration = -1
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = 1
  l0._graph = self
  l0.BlackoutStarted = self.f_9_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.Trigger = "9223372050957537385"
  l0.AutoDisable = 1
end
function export:Out()
end
function export:OutStopBlackOut()
end
function export:OutStartBlackOut()
end
_compilerVersion = 4
