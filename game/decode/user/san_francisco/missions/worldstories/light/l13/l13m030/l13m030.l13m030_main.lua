export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/EnableCameraDoF.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2758983126.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3311965297.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/341390301.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3022738379.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/797229460.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/969887487.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4197762860.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Smoke_FX_List = {
    "9223372070704021782",
    "9223372070704021783",
    "9223372070704021784",
    "9223372070704021785",
    "9223372070704021786"
  }
  self[8] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[8]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_8_Out
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
  self[9] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_9_Finished
  self[19] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = self.f_19_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[40] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[2]
  l0._graph = self
  self[10] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_10_Hacked
  self[34] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[34]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_34_Out
  self[28] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = self.f_28_Out
  l0.Started = self.f_28_Started
  l0.Finished = DummyFunction
  self[15] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = self.f_15_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_15_Escaped
  l0.LeftArea = DummyFunction
  self[27] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[25] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_25_Finished
  self[38] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_38_MessageCompleted
  self[23] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_17_Out
  self[39] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[39]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_39_PostOut
  self[26] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[43] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[43]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_43_Deactivated
  self[30] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[30]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_30_PostOut
  self[24] = cbox:CreateBox("domino/System/EnableCameraDoF.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = self.f_24_Out
  self[22] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Loaded = self.f_22_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[29] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_29_Started
  l0.Finished = DummyFunction
  self[37] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0.MessageCompleted = DummyFunction
  self[42] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[16] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_16_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_16_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[36] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[36]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_36_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[18] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_18_Unloaded
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
  l0 = self[34]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[34]
  l0:Input(0)
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0:ShowNewObjective()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  self:en_14()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_8_Out()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Start()
end
function export:f_6_TimeElapsed()
  local l0
  self = self._graph
  self:en_12()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Enable = 0
  l0:In()
end
function export:f_9_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0:In()
end
function export:f_19_Started()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetInitialTarget()
end
function export:f_10_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0:In()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0.LayerName = "L13M030_IOP_Main"
  l0:Load()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Entity = "9223372061660488344"
  l0.SoundId = "soundbinary/4197762860.bnk"
  l0:Play()
end
function export:f_28_Started()
  local l0
  self = self._graph
  self:en_12()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceUserOutOfCamera()
end
function export:f_15_Escaped()
  local l0
  self = self._graph
  l0 = self[18]
  l0.LayerName = "L13M030_IOP_Main"
  l0:Unload()
end
function export:f_15_Started()
  local l0
  self = self._graph
  l0 = self[36]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357369883"
  l0:StartCommunication()
end
function export:f_11_Stopped()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_12_CanExitSet()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Entity = "9223372061660488344"
  l0.SoundId = "soundbinary/3022738379.bnk"
  l0:Play()
end
function export:f_12_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = self[30]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_25_Finished()
  local l0
  self = self._graph
  l0 = self[26]
  l0.SoundId = "soundbinary/3311965297.bnk"
  l0:Play()
end
function export:f_35_EnterForced()
  local l0
  self = self._graph
  l0 = self[39]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_38_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Succeed()
end
function export:f_21_CanExitSet()
  local l0
  self = self._graph
  self:en_21()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_21_EnterForced()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SceneEntity = "9223372055682152657"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/L13/ulc_zodiackiller.seq"
  l0:Start()
end
function export:f_5_CanExitSet()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:DisableHack()
end
function export:f_5_InitialTargetSet()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372055083731553"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_35_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0:ForceEnter()
end
function export:f_13_Started()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Start()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[38]
  l0:ShowMissionComplete()
end
function export:f_39_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0:In()
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = self.Smoke_FX_List
  l0._graph = self
  l0.Started = self.f_13_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  self:en_14()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_43_Deactivated()
  local l0
  self = self._graph
  self:en_21()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_30_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.SoundId = "soundbinary/969887487.bnk"
  l0:Play()
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Entity = "9223372061660488344"
  l0.SoundId = "soundbinary/2758983126.bnk"
  l0:Play()
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Entity = "9223372061660488344"
  l0.SoundId = "soundbinary/797229460.bnk"
  l0:Play()
end
function export:f_22_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = self.Smoke_FX_List
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = self.f_11_Stopped
  l0.Cleaned = DummyFunction
  l0:Stop()
end
function export:f_14_Started()
  local l0
  self = self._graph
  l0 = self[25]
  l0.SoundId = "soundbinary/341390301.bnk"
  l0:Play()
end
function export:f_14_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372055083731551"
  l0.InteractionEntityList = nil
  l0.EnableState = 0
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_29_Started()
  local l0
  self = self._graph
  l0 = self[8]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357371345"
  l0:StartCommunication()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Stop()
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  l0 = self[43]
  l0:Deactivate()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Entity = "9223372069868760730"
  l0.Entity_AreaRadius = 150
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
function export:f_16_Disabled()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:DisableProfiling()
end
function export:f_16_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0.CLO = "9223372056457306315"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_36_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Condition(0)
end
function export:f_18_Unloaded()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Condition(1)
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.SceneEntity = "9223372055682152657"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/L13/ulc_zodiackiller_loop.seq"
end
function export:en_12()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372056457307502"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_12_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_12_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_21()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372056457307502"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_21_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_21_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_5()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372055083731553"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_5_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = self.f_5_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_14()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372056750375871",
    "9223372056750271951"
  }
  l0._graph = self
  l0.Started = self.f_14_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_14_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.HackableEntity = "9223372056457307502"
end
_compilerVersion = 4
