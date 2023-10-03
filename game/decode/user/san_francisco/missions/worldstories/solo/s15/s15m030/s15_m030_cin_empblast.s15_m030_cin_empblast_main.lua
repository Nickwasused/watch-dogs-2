export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1482453689.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1718030586.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/832682248.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[10] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[11] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[13] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[7] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[7]
  l0._graph = self
  l0.Attached = self.f_7_Attached
  self[2] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_2_Out
  l0.ResetOut = DummyFunction
  self[6] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[12] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[12]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_12_Deactivated
  self[3] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"SkipCin"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_3_Skipped
  l0.Finished = self.f_3_Finished
  l0.SPOut.SkipCin = self.f_3_SPOut__SkipCin_
  self[4] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = self.f_1_PreOut
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
  l0 = self[1]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Seconds = 0.25
  l0:Start()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  l0 = self[10]
  l0.SoundId = "soundbinary/1718030586.bnk"
  l0:Play()
end
function export:f_9_Out_2()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SoundId = "soundbinary/1482453689.bnk"
  l0:Play()
end
function export:f_5_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0.Out[2] = self.f_9_Out_2
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Start()
end
function export:f_11_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[13]
  l0.SoundId = "soundbinary/832682248.bnk"
  l0:Play()
end
function export:f_7_Attached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372064793130943"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_5_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_2_Out()
  self = self._graph
  self:Out()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = self.WrenchJR_Var
  l0.Origin = self.WrenchJR_Var
  l0.Radius = 5
  l0.PropagationSpeed = nil
  l0.RecoverySpeed = nil
  l0.Duration = 5
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0.BlackoutStarted = DummyFunction
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  l0:StartBlackout()
end
function export:f_12_Deactivated()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Parent = self.WrenchJR_Var
  l0.Child = "9223372064793130943"
  l0:Attach()
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(1)
end
function export:f_3_Skipped()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(0)
end
function export:f_3_SPOut__SkipCin_()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Skip()
end
function export:f_4_TimeElapsed()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Start()
end
function export:f_1_PreOut()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Deactivate()
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.SceneEntity = "9223372064420804020"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_empblast_wrenchjr_fx.seq"
end
function export:Out()
end
_compilerVersion = 4
