export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/LongRangeShadow.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/WaitQualitiesLoaded.lua")
  cbox:LoadResource("soundbinary/2332991001.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[9] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_9_Out
  l0.ResetOut = DummyFunction
  self[4] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[8] = cbox:CreateBox("domino/System/WaitQualitiesLoaded.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Loaded = self.f_8_Loaded
  self[11] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_11_Out
  l0.ResetOut = DummyFunction
  self[13] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_7_Skipped
  l0.Finished = self.f_7_Finished
  self[12] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_12_Skipped
  l0.Finished = self.f_12_Finished
  self[3] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_3_Skipped
  l0.Finished = self.f_3_Finished
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
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 19
  l0.Minute = 22
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:SetTimeOfDay()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.LoadingScreen = 0
  l0:In()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SceneEntity = "9223372049417541849"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_PGV-FS_VID/s04_pgv-fs_vid.seq"
  l0:Start()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LongRangeShadow.lua")]
  l0.Distance = 3000
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:SetHighPriorityNearDistance()
end
function export:f_8_Loaded()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Seconds = 2
  l0:Start()
end
function export:f_15_Out()
  self = self._graph
  self:Out()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LongRangeShadow.lua")]
  l0.Distance = 1500
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:SetHighPriorityNearDistance()
end
function export:f_13_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SceneEntity = "9223372046601120188"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_HaumCelebration_CIN/s04_haumcelebration_cin.seq"
  l0:Start()
end
function export:f_7_Finished()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(1)
end
function export:f_7_Skipped()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(0)
end
function export:f_12_Finished()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In(1)
end
function export:f_12_Skipped()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In(0)
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  l0 = self[12]
  l0.SceneEntity = "9223372049417541851"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_DusanRecruitment-FS_VID/s04_dusanrecruitment-fs_vid.seq"
  l0:Start()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SoundId = "soundbinary/2332991001.bnk"
  l0:Play()
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(1)
end
function export:f_3_Skipped()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(0)
end
function export:Out()
end
_compilerVersion = 4
