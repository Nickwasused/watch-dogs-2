export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1284439816.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[8] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_8_Out
  l0.ResetOut = DummyFunction
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
  self[10] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
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
  l0 = self[5]
  l0.Seconds = 3
  l0:Start()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Start()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(1)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(0)
end
function export:f_7_TimeElapsed()
  self = self._graph
  self:Out()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047502963555"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_WrongIntentions_CIN/s07_wrongintentions_cin.seq"
  l0:Start()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[10]
  l0.SoundId = "soundbinary/1284439816.bnk"
  l0:Play()
end
function export:Out()
end
_compilerVersion = 4
