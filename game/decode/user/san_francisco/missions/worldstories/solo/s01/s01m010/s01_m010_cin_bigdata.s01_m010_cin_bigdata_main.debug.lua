export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
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
  self._name = "S01_M010_CIN_BigData_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main"
  self.Finished = DummyFunction
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_PlaySound_v2_41 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_41
  l0._graph = self
  l0._name = "box_PlaySound_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|2934642"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayerComputerInteraction_27 = cbox:CreateBox("domino/System/PlayerComputerInteractionController.lua")
  l0 = self.box_PlayerComputerInteraction_27
  l0._graph = self
  l0._name = "box_PlayerComputerInteraction_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|110946617"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.PageSet = self.f_box_PlayerComputerInteraction_27_PageSet
  l0.Completed = self.f_box_PlayerComputerInteraction_27_Completed
  self.box_PlaySequence_v5_14 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_14
  l0._graph = self
  l0._name = "box_PlaySequence_v5_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|169855803"
  l0._DynamicAnchors = {
    SPOut = {"Pause"}
  }
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_PlaySequence_v5_14_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.Pause = self.f_box_PlaySequence_v5_14_SPOut__Pause_
  self.box_PlayDialog_v2_30 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_30
  l0._graph = self
  l0._name = "box_PlayDialog_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|396823835"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_38 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_38
  l0._graph = self
  l0._name = "box_PlaySound_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|413468057"
  l0.Out = self.f_box_PlaySound_v2_38_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayerComputerInteraction_7 = cbox:CreateBox("domino/System/PlayerComputerInteractionController.lua")
  l0 = self.box_PlayerComputerInteraction_7
  l0._graph = self
  l0._name = "box_PlayerComputerInteraction_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|447145629"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.PageSet = self.f_box_PlayerComputerInteraction_7_PageSet
  l0.Completed = self.f_box_PlayerComputerInteraction_7_Completed
  self.box_Timer_v2_46 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_46
  l0._graph = self
  l0._name = "box_Timer_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|606049882"
  l0.Out = self.f_box_Timer_v2_46_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_46_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_28 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_28
  l0._graph = self
  l0._name = "box_PlaySequence_v5_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|623058315"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_28_Finished
  self.box_PlayDialog_v2_44 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_44
  l0._graph = self
  l0._name = "box_PlayDialog_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|662495906"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_22 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_22
  l0._graph = self
  l0._name = "box_PlaySequence_v5_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|678326306"
  l0._DynamicAnchors = {
    SPOut = {"Pause"}
  }
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_PlaySequence_v5_22_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.Pause = self.f_box_PlaySequence_v5_22_SPOut__Pause_
  self.box_PlaySound_v2_6 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_6
  l0._graph = self
  l0._name = "box_PlaySound_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|691248080"
  l0.Out = self.f_box_PlaySound_v2_6_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|715052671"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySound_v2_42 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_42
  l0._graph = self
  l0._name = "box_PlaySound_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|857708823"
  l0.Out = self.f_box_PlaySound_v2_42_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_3 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_3
  l0._graph = self
  l0._name = "box_PlaySequence_v5_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|988631215"
  l0.Started = self.f_box_PlaySequence_v5_3_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_3_Finished
  self.box_PlaySound_v2_19 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_19
  l0._graph = self
  l0._name = "box_PlaySound_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1104080726"
  l0.Out = self.f_box_PlaySound_v2_19_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_15 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_15
  l0._graph = self
  l0._name = "box_PlaySequence_v5_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1170000417"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_15_Finished
  self.box_PlaySequence_v5_11 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_11
  l0._graph = self
  l0._name = "box_PlaySequence_v5_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1173186382"
  l0._DynamicAnchors = {
    SPOut = {"Pause"}
  }
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_PlaySequence_v5_11_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.Pause = self.f_box_PlaySequence_v5_11_SPOut__Pause_
  self.box_PlayerComputerInteraction_5 = cbox:CreateBox("domino/System/PlayerComputerInteractionController.lua")
  l0 = self.box_PlayerComputerInteraction_5
  l0._graph = self
  l0._name = "box_PlayerComputerInteraction_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1183759921"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_PlayerComputerInteraction_5_Stopped
  l0.PageSet = DummyFunction
  l0.Completed = DummyFunction
  self.box_PlaySound_v2_9 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_9
  l0._graph = self
  l0._name = "box_PlaySound_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1400449479"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayerComputerInteraction_4 = cbox:CreateBox("domino/System/PlayerComputerInteractionController.lua")
  l0 = self.box_PlayerComputerInteraction_4
  l0._graph = self
  l0._name = "box_PlayerComputerInteraction_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1421541168"
  l0.Started = self.f_box_PlayerComputerInteraction_4_Started
  l0.Stopped = DummyFunction
  l0.PageSet = DummyFunction
  l0.Completed = DummyFunction
  self.box_Timer_v2_43 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_43
  l0._graph = self
  l0._name = "box_Timer_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1461624271"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_43_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_18 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_18
  l0._graph = self
  l0._name = "box_PlaySequence_v5_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1610339262"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_18_Finished
  self.box_Timer_v2_34 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_34
  l0._graph = self
  l0._name = "box_Timer_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1714140623"
  l0.Out = self.f_box_Timer_v2_34_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_45 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_45
  l0._graph = self
  l0._name = "box_PlayDialog_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1881126490"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1933832678"
  l0.Out = self.f_box_Timer_v2_8_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_37 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_37
  l0._graph = self
  l0._name = "box_PlaySound_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|2023584504"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_21 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_21
  l0._graph = self
  l0._name = "box_PlayDialog_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|2096389611"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_21_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayerComputerInteraction_32 = cbox:CreateBox("domino/System/PlayerComputerInteractionController.lua")
  l0 = self.box_PlayerComputerInteraction_32
  l0._graph = self
  l0._name = "box_PlayerComputerInteraction_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|2134911463"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.PageSet = self.f_box_PlayerComputerInteraction_32_PageSet
  l0.Completed = self.f_box_PlayerComputerInteraction_32_Completed
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
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1942638883", "1942638883", "S01_M010_CIN_BigData_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_PlayerComputerInteraction_27_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_42
  l0.SoundId = "soundbinary/2287628344.bnk"
  l0 = self.box_PlayerComputerInteraction_27
  l1 = self.box_PlaySound_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|497973942", "497973942", "S01_M010_CIN_BigData_Main", "box_PlayerComputerInteraction_27.Completed", "box_PlaySound_v2_42.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlayerComputerInteraction_27_PageSet()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_41
  l0.SoundId = "soundbinary/2377483257.bnk"
  l0 = self.box_PlayerComputerInteraction_27
  l1 = self.box_PlaySound_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1281767841", "1281767841", "S01_M010_CIN_BigData_Main", "box_PlayerComputerInteraction_27.PageSet", "box_PlaySound_v2_41.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySequence_v5_14_SPOut__Pause_()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayerComputerInteraction_32
  l0.PageNumber = 1
  l0 = self.box_PlaySequence_v5_14
  l1 = self.box_PlayerComputerInteraction_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|724235166", "724235166", "S01_M010_CIN_BigData_Main", "box_PlaySequence_v5_14.SPOut", "box_PlayerComputerInteraction_32.SetPage", l0, l1)
  l1:SetPage()
end
function export:f_box_PlaySequence_v5_14_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_28
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataMarcus05_CIN/s01_bigdatamarcus05_cin .seq"
  l0 = self.box_PlaySequence_v5_14
  l1 = self.box_PlaySequence_v5_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1458443088", "1458443088", "S01_M010_CIN_BigData_Main", "box_PlaySequence_v5_14.Stopped", "box_PlaySequence_v5_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_38_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_14()
  l0 = self.box_PlaySound_v2_38
  l1 = self.box_PlaySequence_v5_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1960288120", "1960288120", "S01_M010_CIN_BigData_Main", "box_PlaySound_v2_38.Out", "box_PlaySequence_v5_14.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_PlayerComputerInteraction_7_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_19
  l0.SoundId = "soundbinary/2505253769.bnk"
  l0 = self.box_PlayerComputerInteraction_7
  l1 = self.box_PlaySound_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1071341636", "1071341636", "S01_M010_CIN_BigData_Main", "box_PlayerComputerInteraction_7.Completed", "box_PlaySound_v2_19.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlayerComputerInteraction_7_PageSet()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_9
  l0.SoundId = "soundbinary/2770379042.bnk"
  l0 = self.box_PlayerComputerInteraction_7
  l1 = self.box_PlaySound_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1450428627", "1450428627", "S01_M010_CIN_BigData_Main", "box_PlayerComputerInteraction_7.PageSet", "box_PlaySound_v2_9.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_46_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_22()
  l0 = self.box_Timer_v2_46
  l1 = self.box_PlaySequence_v5_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1936430670", "1936430670", "S01_M010_CIN_BigData_Main", "box_Timer_v2_46.Out", "box_PlaySequence_v5_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_46_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_45
  l0.SoundId = "soundbinary/4073233554.bnk"
  l0 = self.box_Timer_v2_46
  l1 = self.box_PlayDialog_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|514604394", "514604394", "S01_M010_CIN_BigData_Main", "box_Timer_v2_46.TimeElapsed", "box_PlayDialog_v2_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_28_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_46
  l0.Seconds = 0.25
  l0 = self.box_PlaySequence_v5_28
  l1 = self.box_Timer_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1342117814", "1342117814", "S01_M010_CIN_BigData_Main", "box_PlaySequence_v5_28.Finished", "box_Timer_v2_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_22_SPOut__Pause_()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayerComputerInteraction_27
  l0.PageNumber = 2
  l0 = self.box_PlaySequence_v5_22
  l1 = self.box_PlayerComputerInteraction_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1673618399", "1673618399", "S01_M010_CIN_BigData_Main", "box_PlaySequence_v5_22.SPOut", "box_PlayerComputerInteraction_27.SetPage", l0, l1)
  l1:SetPage()
end
function export:f_box_PlaySequence_v5_22_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_22
  l1 = self.box_PlayerComputerInteraction_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1060247610", "1060247610", "S01_M010_CIN_BigData_Main", "box_PlaySequence_v5_22.Stopped", "box_PlayerComputerInteraction_5.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_PlaySound_v2_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayerComputerInteraction_4
  l0.TargetEntity = "9223372060332184897"
  l0.ResourceFile = "UI\\Fire\\Bin\\cin_PlayGo.feu"
  l0 = self.box_PlaySound_v2_6
  l1 = self.box_PlayerComputerInteraction_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|945196152", "945196152", "S01_M010_CIN_BigData_Main", "box_PlaySound_v2_6.Out", "box_PlayerComputerInteraction_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_3
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataIntro-FS_VID/s01_bigdataintro-fs_vid.seq"
  l0 = self.box_CinematicPrep_1
  l1 = self.box_PlaySequence_v5_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|134969723", "134969723", "S01_M010_CIN_BigData_Main", "box_CinematicPrep_1.PreOut", "box_PlaySequence_v5_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_42_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_22()
  l0 = self.box_PlaySound_v2_42
  l1 = self.box_PlaySequence_v5_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|195180329", "195180329", "S01_M010_CIN_BigData_Main", "box_PlaySound_v2_42.Out", "box_PlaySequence_v5_22.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_PlaySequence_v5_3_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_8
  l0.Seconds = 2.8
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|2037485267", "2037485267", "S01_M010_CIN_BigData_Main", "box_PlaySequence_v5_3.Finished", "box_Timer_v2_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_3_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_6
  l0.SoundId = "soundbinary/2382512013.bnk"
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_PlaySound_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|994832683", "994832683", "S01_M010_CIN_BigData_Main", "box_PlaySequence_v5_3.Started", "box_PlaySound_v2_6.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_11()
  l0 = self.box_PlaySound_v2_19
  l1 = self.box_PlaySequence_v5_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|285573589", "285573589", "S01_M010_CIN_BigData_Main", "box_PlaySound_v2_19.Out", "box_PlaySequence_v5_11.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_PlaySequence_v5_15_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_34
  l0.Seconds = 0.333
  l0 = self.box_PlaySequence_v5_15
  l1 = self.box_Timer_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|546319945", "546319945", "S01_M010_CIN_BigData_Main", "box_PlaySequence_v5_15.Finished", "box_Timer_v2_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_11_SPOut__Pause_()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayerComputerInteraction_7
  l0.PageNumber = 0
  l0 = self.box_PlaySequence_v5_11
  l1 = self.box_PlayerComputerInteraction_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1990130525", "1990130525", "S01_M010_CIN_BigData_Main", "box_PlaySequence_v5_11.SPOut", "box_PlayerComputerInteraction_7.SetPage", l0, l1)
  l1:SetPage()
end
function export:f_box_PlaySequence_v5_11_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_15
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataMarcus03_CIN/s01_bigdatamarcus03_cin .seq"
  l0 = self.box_PlaySequence_v5_11
  l1 = self.box_PlaySequence_v5_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1269906192", "1269906192", "S01_M010_CIN_BigData_Main", "box_PlaySequence_v5_11.Stopped", "box_PlaySequence_v5_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayerComputerInteraction_5_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_18
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataOutro-FS_VID/s01_bigdataoutro-fs_vid.seq"
  l0 = self.box_PlayerComputerInteraction_5
  l1 = self.box_PlaySequence_v5_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1506709126", "1506709126", "S01_M010_CIN_BigData_Main", "box_PlayerComputerInteraction_5.Stopped", "box_PlaySequence_v5_18.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetActionMap_v2_31_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|566446556", "566446556", "S01_M010_CIN_BigData_Main", "box_SetActionMap_v2_31.Popped", "Finished", clone, self)
  self:Finished()
end
function export:f_box_PlayerComputerInteraction_4_Started()
  local l0
  self = self._graph
  l0 = self.box_PlayerComputerInteraction_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|46550530", "46550530", "S01_M010_CIN_BigData_Main", "box_PlayerComputerInteraction_4.Started", "Out", l0, self)
  self:Out()
end
function export:f_box_Timer_v2_43_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_44
  l0.SoundId = "soundbinary/3097243376.bnk"
  l0 = self.box_Timer_v2_43
  l1 = self.box_PlayDialog_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|986742151", "986742151", "S01_M010_CIN_BigData_Main", "box_Timer_v2_43.TimeElapsed", "box_PlayDialog_v2_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_18_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "domino_input_monitor"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1406493578"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_31_Popped
  l0 = self.box_PlaySequence_v5_18
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|159308422", "159308422", "S01_M010_CIN_BigData_Main", "box_PlaySequence_v5_18.Finished", "box_SetActionMap_v2_31.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_Timer_v2_34_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_14()
  l0 = self.box_Timer_v2_34
  l1 = self.box_PlaySequence_v5_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1260120409", "1260120409", "S01_M010_CIN_BigData_Main", "box_Timer_v2_34.Out", "box_PlaySequence_v5_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_34_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_30
  l0.SoundId = "soundbinary/3283990943.bnk"
  l0 = self.box_Timer_v2_34
  l1 = self.box_PlayDialog_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|113456821", "113456821", "S01_M010_CIN_BigData_Main", "box_Timer_v2_34.TimeElapsed", "box_PlayDialog_v2_30.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "domino_input_monitor"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1962594360"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_2_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_Timer_v2_8
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|357735935", "357735935", "S01_M010_CIN_BigData_Main", "box_Timer_v2_8.Out", "box_SetActionMap_v2_2.Push", l0, l1)
  l1:Push()
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_21
  l0.SoundId = "soundbinary/648864061.bnk"
  l0 = self.box_Timer_v2_8
  l1 = self.box_PlayDialog_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1474710902", "1474710902", "S01_M010_CIN_BigData_Main", "box_Timer_v2_8.TimeElapsed", "box_PlayDialog_v2_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetActionMap_v2_2_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_11()
  l0 = self.box_PlaySequence_v5_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1767357434", "1767357434", "S01_M010_CIN_BigData_Main", "box_SetActionMap_v2_2.Pushed", "box_PlaySequence_v5_11.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_21_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_43
  l0.Seconds = 15.5
  l0 = self.box_PlayDialog_v2_21
  l1 = self.box_Timer_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1990736342", "1990736342", "S01_M010_CIN_BigData_Main", "box_PlayDialog_v2_21.Finished", "box_Timer_v2_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayerComputerInteraction_32_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_38
  l0.SoundId = "soundbinary/2048410733.bnk"
  l0 = self.box_PlayerComputerInteraction_32
  l1 = self.box_PlaySound_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|1836834763", "1836834763", "S01_M010_CIN_BigData_Main", "box_PlayerComputerInteraction_32.Completed", "box_PlaySound_v2_38.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlayerComputerInteraction_32_PageSet()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_37
  l0.SoundId = "soundbinary/504055127.bnk"
  l0 = self.box_PlayerComputerInteraction_32
  l1 = self.box_PlaySound_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01_M010_CIN_BigData.domino|@S01_M010_CIN_BigData_Main|100500325", "100500325", "S01_M010_CIN_BigData_Main", "box_PlayerComputerInteraction_32.PageSet", "box_PlaySound_v2_37.Play", l0, l1)
  l1:Play()
end
function export:OnEnter_box_PlaySequence_v5_14()
  local l0
  l0 = self.box_PlaySequence_v5_14
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataLoop_CIN/s01_bigdataloop_cin .seq"
end
function export:OnEnter_box_PlaySequence_v5_22()
  local l0
  l0 = self.box_PlaySequence_v5_22
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataLoop_CIN/s01_bigdataloop_cin .seq"
end
function export:OnEnter_box_PlaySequence_v5_11()
  local l0
  l0 = self.box_PlaySequence_v5_11
  l0.SceneEntity = "9223372056336527913"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_BigDataLoop_CIN/s01_bigdataloop_cin .seq"
end
function export:Finished()
end
function export:Out()
end
_compilerVersion = 4
