export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerComputerInteractionController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2505253769.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3283990943.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2048410733.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/648864061.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2382512013.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4073233554.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/504055127.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2377483257.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3097243376.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2287628344.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2770379042.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Finished = DummyFunction
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[41] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[27] = cbox:CreateBox("domino/System/PlayerComputerInteractionController.lua")
  l0 = self[27]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.PageSet = self.f_27_PageSet
  l0.Completed = self.f_27_Completed
  self[14] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"Pause"}
  }
  l0.Started = DummyFunction
  l0.Stopped = self.f_14_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.Pause = self.f_14_SPOut__Pause_
  self[30] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[38] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PlayerComputerInteractionController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.PageSet = self.f_7_PageSet
  l0.Completed = self.f_7_Completed
  self[46] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_46_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[28] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[28]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_28_Finished
  self[44] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[22] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"Pause"}
  }
  l0.Started = DummyFunction
  l0.Stopped = self.f_22_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.Pause = self.f_22_SPOut__Pause_
  self[6] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = self.f_1_PreOut
  l0.PostOut = DummyFunction
  self[42] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = self.f_42_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[3] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = self.f_3_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_3_Finished
  self[19] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[15] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_15_Finished
  self[11] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"Pause"}
  }
  l0.Started = DummyFunction
  l0.Stopped = self.f_11_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.Pause = self.f_11_SPOut__Pause_
  self[5] = cbox:CreateBox("domino/System/PlayerComputerInteractionController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_5_Stopped
  l0.PageSet = DummyFunction
  l0.Completed = DummyFunction
  self[9] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[4] = cbox:CreateBox("domino/System/PlayerComputerInteractionController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = self.f_4_Started
  l0.Stopped = DummyFunction
  l0.PageSet = DummyFunction
  l0.Completed = DummyFunction
  self[43] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_43_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[18] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[18]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_18_Finished
  self[34] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = self.f_34_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[45] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[8] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[37] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[21] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_21_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[32] = cbox:CreateBox("domino/System/PlayerComputerInteractionController.lua")
  l0 = self[32]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.PageSet = self.f_32_PageSet
  l0.Completed = self.f_32_Completed
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
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_27_Completed()
  local l0
  self = self._graph
  l0 = self[42]
  l0.SoundId = "soundbinary/2287628344.bnk"
  l0:Play()
end
function export:f_27_PageSet()
  local l0
  self = self._graph
  l0 = self[41]
  l0.SoundId = "soundbinary/2377483257.bnk"
  l0:Play()
end
function export:f_14_SPOut__Pause_()
  local l0
  self = self._graph
  l0 = self[32]
  l0.PageNumber = 1
  l0:SetPage()
end
function export:f_14_Stopped()
  local l0
  self = self._graph
  l0 = self[28]
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataMarcus05_CIN/s01_bigdatamarcus05_cin .seq"
  l0:Start()
end
function export:f_38_Out()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Stop()
end
function export:f_7_Completed()
  local l0
  self = self._graph
  l0 = self[19]
  l0.SoundId = "soundbinary/2505253769.bnk"
  l0:Play()
end
function export:f_7_PageSet()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SoundId = "soundbinary/2770379042.bnk"
  l0:Play()
end
function export:f_46_Out()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Start()
end
function export:f_46_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[45]
  l0.SoundId = "soundbinary/4073233554.bnk"
  l0:Start()
end
function export:f_28_Finished()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Seconds = 0.25
  l0:Start()
end
function export:f_22_SPOut__Pause_()
  local l0
  self = self._graph
  l0 = self[27]
  l0.PageNumber = 2
  l0:SetPage()
end
function export:f_22_Stopped()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Stop()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.TargetEntity = "9223372060332184897"
  l0.ResourceFile = "UI\\Fire\\Bin\\cin_PlayGo.feu"
  l0:Start()
end
function export:f_1_PreOut()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataIntro-FS_VID/s01_bigdataintro-fs_vid.seq"
  l0:Start()
end
function export:f_42_Out()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Stop()
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Seconds = 2.8
  l0:Start()
end
function export:f_3_Started()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SoundId = "soundbinary/2382512013.bnk"
  l0:Play()
end
function export:f_19_Out()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Stop()
end
function export:f_15_Finished()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Seconds = 0.333
  l0:Start()
end
function export:f_11_SPOut__Pause_()
  local l0
  self = self._graph
  l0 = self[7]
  l0.PageNumber = 0
  l0:SetPage()
end
function export:f_11_Stopped()
  local l0
  self = self._graph
  l0 = self[15]
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataMarcus03_CIN/s01_bigdatamarcus03_cin .seq"
  l0:Start()
end
function export:f_5_Stopped()
  local l0
  self = self._graph
  l0 = self[18]
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataOutro-FS_VID/s01_bigdataoutro-fs_vid.seq"
  l0:Start()
end
function export:f_31_Popped()
  self = self._graph
  self:Finished()
end
function export:f_4_Started()
  self = self._graph
  self:Out()
end
function export:f_43_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[44]
  l0.SoundId = "soundbinary/3097243376.bnk"
  l0:Start()
end
function export:f_18_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "domino_input_monitor"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_31_Popped
  l0:Pop()
end
function export:f_34_Out()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Start()
end
function export:f_34_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[30]
  l0.SoundId = "soundbinary/3283990943.bnk"
  l0:Start()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "domino_input_monitor"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_2_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_8_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[21]
  l0.SoundId = "soundbinary/648864061.bnk"
  l0:Start()
end
function export:f_2_Pushed()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Start()
end
function export:f_21_Finished()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Seconds = 15.5
  l0:Start()
end
function export:f_32_Completed()
  local l0
  self = self._graph
  l0 = self[38]
  l0.SoundId = "soundbinary/2048410733.bnk"
  l0:Play()
end
function export:f_32_PageSet()
  local l0
  self = self._graph
  l0 = self[37]
  l0.SoundId = "soundbinary/504055127.bnk"
  l0:Play()
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataLoop_CIN/s01_bigdataloop_cin .seq"
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataLoop_CIN/s01_bigdataloop_cin .seq"
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataLoop_CIN/s01_bigdataloop_cin .seq"
end
function export:Finished()
end
function export:Out()
end
_compilerVersion = 4
