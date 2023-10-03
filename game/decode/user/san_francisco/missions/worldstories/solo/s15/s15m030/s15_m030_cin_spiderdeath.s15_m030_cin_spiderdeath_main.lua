export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/46276538.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2917667748.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/679040486.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[8] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[5] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[7] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[9] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_9_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
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
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = nil
  l0.VideoDbObject = "Videos.9223372060637313406"
  l0.ExternalSoundId = "soundbinary/46276538.bnk"
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
  l0.Started = self.f_4_Started
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = self.f_4_Finished
  l0:Start()
end
function export:f_4_Finished()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047683076294"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/S15_SpiderDeath_CIN/s15_spiderdeath_cin.seq"
  l0:Start()
end
function export:f_4_Started()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SoundId = "soundbinary/679040486.bnk"
  l0:Play()
end
function export:f_7_TimeElapsed()
  self = self._graph
  self:Out()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Start()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(1)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(0)
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SoundId = "soundbinary/2917667748.bnk"
  l0:Play()
end
function export:Out()
end
_compilerVersion = 4
