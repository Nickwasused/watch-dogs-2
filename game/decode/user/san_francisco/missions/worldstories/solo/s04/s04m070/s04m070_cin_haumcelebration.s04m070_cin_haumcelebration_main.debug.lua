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
  self._name = "S04M070_CIN_HaumCelebration_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_OnceOnly_v3_9 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_9
  l0._graph = self
  l0._name = "box_OnceOnly_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|244302274"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_9_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|318628851"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_2 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_2
  l0._graph = self
  l0._name = "box_PlaySound_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|400278760"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Wait_Qualities_Loaded_8 = cbox:CreateBox("domino/System/WaitQualitiesLoaded.lua")
  l0 = self.box_Wait_Qualities_Loaded_8
  l0._graph = self
  l0._name = "box_Wait_Qualities_Loaded_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|467911469"
  l0.Out = DummyFunction
  l0.Loaded = self.f_box_Wait_Qualities_Loaded_8_Loaded
  self.box_OnceOnly_v3_11 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_11
  l0._graph = self
  l0._name = "box_OnceOnly_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|606463584"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_11_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_13 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_13
  l0._graph = self
  l0._name = "box_Timer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|698470236"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_7 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_7
  l0._graph = self
  l0._name = "box_PlaySequence_v5_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|788523352"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_7_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_7_Finished
  self.box_PlaySequence_v5_12 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_12
  l0._graph = self
  l0._name = "box_PlaySequence_v5_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|849406351"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_12_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_12_Finished
  self.box_PlaySequence_v5_3 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_3
  l0._graph = self
  l0._name = "box_PlaySequence_v5_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|2065390044"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_3_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_3_Finished
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
  l0._name = "box_SetTimeOfDay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|332125489"
  l0.Out = self.f_box_SetTimeOfDay_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|331067236", "331067236", "S04M070_CIN_HaumCelebration_Main", "In", "box_SetTimeOfDay_10.SetTimeOfDay", self, l0)
  l0:SetTimeOfDay()
end
function export:f_box_LongRangeShadow_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LongRangeShadow.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Wait_Qualities_Loaded_8
  l0.LoadingScreen = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|256722234", "256722234", "S04M070_CIN_HaumCelebration_Main", "box_LongRangeShadow_14.Out", "box_Wait_Qualities_Loaded_8.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|1532072280"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_OnceOnly_v3_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|1783260833", "1783260833", "S04M070_CIN_HaumCelebration_Main", "box_OnceOnly_v3_9.Out", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_7
  l0.SceneEntity = "9223372049417541849"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_PGV-FS_VID/s04_pgv-fs_vid.seq"
  l0 = self.box_OnceOnly_v3_4
  l1 = self.box_PlaySequence_v5_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|289611932", "289611932", "S04M070_CIN_HaumCelebration_Main", "box_OnceOnly_v3_4.Out", "box_PlaySequence_v5_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetTimeOfDay_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LongRangeShadow.lua")]
  l0.Distance = 3000
  l0._graph = self
  l0._name = "box_LongRangeShadow_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|160100204"
  l0.Out = self.f_box_LongRangeShadow_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|285085966", "285085966", "S04M070_CIN_HaumCelebration_Main", "box_SetTimeOfDay_10.Out", "box_LongRangeShadow_14.SetHighPriorityNearDistance", clone, l0)
  l0:SetHighPriorityNearDistance()
end
function export:f_box_Wait_Qualities_Loaded_8_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_13
  l0.Seconds = 2
  l0 = self.box_Wait_Qualities_Loaded_8
  l1 = self.box_Timer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|2138186099", "2138186099", "S04M070_CIN_HaumCelebration_Main", "box_Wait_Qualities_Loaded_8.Loaded", "box_Timer_v2_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_LongRangeShadow_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LongRangeShadow.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|155332666", "155332666", "S04M070_CIN_HaumCelebration_Main", "box_LongRangeShadow_15.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_OnceOnly_v3_11_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LongRangeShadow.lua")]
  l0.Distance = 1500
  l0._graph = self
  l0._name = "box_LongRangeShadow_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|563077303"
  l0.Out = self.f_box_LongRangeShadow_15_Out
  l0 = self.box_OnceOnly_v3_11
  l1 = Boxes[PathID("domino/System/LongRangeShadow.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|1680139725", "1680139725", "S04M070_CIN_HaumCelebration_Main", "box_OnceOnly_v3_11.Out", "box_LongRangeShadow_15.SetHighPriorityNearDistance", l0, l1)
  l1:SetHighPriorityNearDistance()
end
function export:f_box_Timer_v2_13_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_3
  l0.SceneEntity = "9223372046601120188"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_HaumCelebration_CIN/s04_haumcelebration_cin.seq"
  l0 = self.box_Timer_v2_13
  l1 = self.box_PlaySequence_v5_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|954534814", "954534814", "S04M070_CIN_HaumCelebration_Main", "box_Timer_v2_13.TimeElapsed", "box_PlaySequence_v5_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_7_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_9()
  l0 = self.box_PlaySequence_v5_7
  l1 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|697854723", "697854723", "S04M070_CIN_HaumCelebration_Main", "box_PlaySequence_v5_7.Finished", "box_OnceOnly_v3_9.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_7_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_9()
  l0 = self.box_PlaySequence_v5_7
  l1 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|1254786952", "1254786952", "S04M070_CIN_HaumCelebration_Main", "box_PlaySequence_v5_7.Skipped", "box_OnceOnly_v3_9.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_12_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_11()
  l0 = self.box_PlaySequence_v5_12
  l1 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|481951974", "481951974", "S04M070_CIN_HaumCelebration_Main", "box_PlaySequence_v5_12.Finished", "box_OnceOnly_v3_11.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_12_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_11()
  l0 = self.box_PlaySequence_v5_12
  l1 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|993480684", "993480684", "S04M070_CIN_HaumCelebration_Main", "box_PlaySequence_v5_12.Skipped", "box_OnceOnly_v3_11.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_12
  l0.SceneEntity = "9223372049417541851"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_DusanRecruitment-FS_VID/s04_dusanrecruitment-fs_vid.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|1180700389", "1180700389", "S04M070_CIN_HaumCelebration_Main", "box_Ordered_Output_5.Out", "box_PlaySequence_v5_12.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_2
  l0.SoundId = "soundbinary/2332991001.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|1698745288", "1698745288", "S04M070_CIN_HaumCelebration_Main", "box_Ordered_Output_5.Out", "box_PlaySound_v2_2.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySequence_v5_3_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|825783580", "825783580", "S04M070_CIN_HaumCelebration_Main", "box_PlaySequence_v5_3.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_3_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04m070_cin_haumcelebration.domino|@S04M070_CIN_HaumCelebration_Main|1848308818", "1848308818", "S04M070_CIN_HaumCelebration_Main", "box_PlaySequence_v5_3.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_OnceOnly_v3_9()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:OnEnter_box_OnceOnly_v3_11()
end
function export:Out()
end
_compilerVersion = 4
