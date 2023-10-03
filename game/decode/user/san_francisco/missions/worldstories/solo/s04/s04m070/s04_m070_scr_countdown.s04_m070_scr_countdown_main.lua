export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/217955354.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[4] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[3] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[3]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[5] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  l0 = self[6]
  l0.Seconds = 0.7
  l0:Start()
end
function export:InInteractionFinish()
  local l0
  self:en_1()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0:StartBlackout()
end
function export:f_1_BlackoutStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_1_BlackoutStopped()
  local l0
  self = self._graph
  l0 = self[3]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347586"
  l0:StartCommunication()
end
function export:f_2_Out_0()
  self = self._graph
  self:Out()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Seconds = 6
  l0:Start()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0:StopBlackout()
end
function export:f_6_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SoundId = "soundbinary/217955354.bnk"
  l0:Start()
end
function export:en_1()
  local l0
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = "9223372047986193919"
  l0.Origin = nil
  l0.Radius = 30
  l0.PropagationSpeed = 5
  l0.RecoverySpeed = 10
  l0.Duration = nil
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0.BlackoutStarted = self.f_1_BlackoutStarted
  l0.BlackoutStopped = self.f_1_BlackoutStopped
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
end
function export:Out()
end
_compilerVersion = 4
