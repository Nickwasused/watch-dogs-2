export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2186813926.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1048561230.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4237778492.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/330298433.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1005938687.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[46] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_46_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[75] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[75]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[68] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[68]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_68_Finished
  self[78] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[78]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[76] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[71] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[67] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[67]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[73] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[72] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = 40
  l0.PropagationSpeed = 10
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
  l0.BlackoutStarted = self.f_13_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  l0:StartBlackout()
end
function export:f_46_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_77_Out_0
  l0.Out[1] = self.f_77_Out_1
  l0:In()
end
function export:f_30_BlackoutStopped()
  self = self._graph
  self:Out()
end
function export:f_74_Out_0()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Seconds = 18
  l0:Start()
end
function export:f_74_Out_1()
  local l0
  self = self._graph
  l0 = self[73]
  l0.Seconds = 33
  l0:Start()
end
function export:f_68_Finished()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Seconds = 1.5
  l0:Start()
end
function export:f_73_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[76]
  l0.SoundId = "soundbinary/330298433.bnk"
  l0:Play()
end
function export:f_72_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[75]
  l0.SoundId = "soundbinary/1048561230.bnk"
  l0:Play()
end
function export:f_13_BlackoutStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_69_Out_0
  l0.Out[1] = self.f_69_Out_1
  l0.Out[2] = self.f_69_Out_2
  l0:In()
end
function export:f_70_Out_0()
  local l0
  self = self._graph
  l0 = self[68]
  l0.SceneEntity = "9223372070800284978"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S12/S12_m020_LenniBunkerBoomSCREENS/s12_m020_lennibunkerboomscreens.seq"
  l0:Start()
end
function export:f_70_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_74_Out_0
  l0.Out[1] = self.f_74_Out_1
  l0:In()
end
function export:f_77_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = nil
  l0.PropagationSpeed = nil
  l0.RecoverySpeed = 10
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
  l0.BlackoutStopped = self.f_30_BlackoutStopped
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  l0:StopBlackout()
end
function export:f_77_Out_1()
  local l0
  self = self._graph
  l0 = self[78]
  l0.SoundId = "soundbinary/1005938687.bnk"
  l0:Play()
end
function export:f_11_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_70_Out_0
  l0.Out[1] = self.f_70_Out_1
  l0:In()
end
function export:f_69_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Seconds = 4
  l0:Start()
end
function export:f_69_Out_1()
  local l0
  self = self._graph
  l0 = self[67]
  l0.SoundId = "soundbinary/4237778492.bnk"
  l0:Play()
end
function export:f_69_Out_2()
  local l0
  self = self._graph
  l0 = self[71]
  l0.SoundId = "soundbinary/2186813926.bnk"
  l0:Play()
end
function export:Out()
end
_compilerVersion = 4
