export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/2025560896.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1284439816.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3396338087.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.CLO_BBQ = nil
  self[2] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = self.f_2_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_2_Skipped
  l0.Finished = self.f_2_Finished
  self[11] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_11_OnUserInPlace
  self[9] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[7] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_7_Out
  l0.ResetOut = DummyFunction
  self[17] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[18] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_18_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[15] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[14] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_2_Finished()
  local l0
  self = self._graph
  l0 = self[7]
  l0:In(1)
end
function export:f_2_Skipped()
  local l0
  self = self._graph
  l0 = self[7]
  l0:In(0)
end
function export:f_2_Started()
  local l0
  self = self._graph
  l0 = self[14]
  l0.SoundId = "soundbinary/3396338087.bnk"
  l0:Play()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Seconds = 3
  l0:Start()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0.CLO = "9223372050064228152"
  l0:Activate()
end
function export:f_11_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[11]
  self.CLO_BBQ = l0.UserID
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.CLO_BBQ
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_9_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SceneEntity = "9223372047235790106"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_TrippingBalls_CIN/s07_trippingballs_cin.seq"
  l0:Start()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_18_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(0)
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Seconds = 124
  l0:Start()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.SoundId = "soundbinary/2025560896.bnk"
  l0:Play()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Start()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.SoundId = "soundbinary/1284439816.bnk"
  l0:Play()
end
function export:f_10_TimeElapsed()
  self = self._graph
  self:Out()
end
function export:Out()
end
_compilerVersion = 4
