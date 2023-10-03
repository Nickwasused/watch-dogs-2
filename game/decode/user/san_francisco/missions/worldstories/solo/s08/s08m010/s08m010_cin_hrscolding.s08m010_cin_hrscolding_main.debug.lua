export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S08M010_CIN_HRScolding_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main"
  self.out = DummyFunction
  self.PlayerEntity = nil
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|508861165"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|1104631737"
  l0.PreOut = self.f_box_CinematicPrep_4_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_1 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_1
  l0._graph = self
  l0._name = "box_OnceOnly_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|1402241121"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_1_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|1430863735"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_6 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_6
  l0._graph = self
  l0._name = "box_PlaySequence_v5_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|1466303382"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_6_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_6_Finished
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
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|1865746175"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_2_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|345019513", "345019513", "S08M010_CIN_HRScolding_Main", "In", "box_Show_Or_Hide_All_UI_2.Hide", self, l0)
  l0:Hide()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|861706421", "861706421", "S08M010_CIN_HRScolding_Main", "box_Timer_v2_5.TimeElapsed", "out", l0, self)
  self:out()
end
function export:f_box_CinematicPrep_4_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_1()
  l0 = self.box_CinematicPrep_4
  l1 = self.box_OnceOnly_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|994141766", "994141766", "S08M010_CIN_HRScolding_Main", "box_CinematicPrep_4.PreOut", "box_OnceOnly_v3_1.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_1
  l1 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|1126752987", "1126752987", "S08M010_CIN_HRScolding_Main", "box_OnceOnly_v3_1.Out", "box_Timer_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_6
  l0.SceneEntity = "9223372050139325806"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_HoratioLeave-FS_VID/s08_horatioleave-fs_vid.seq"
  l0 = self.box_Timer_v2_9
  l1 = self.box_PlaySequence_v5_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|1834788034", "1834788034", "S08M010_CIN_HRScolding_Main", "box_Timer_v2_9.TimeElapsed", "box_PlaySequence_v5_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_6_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_1()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|1377843138", "1377843138", "S08M010_CIN_HRScolding_Main", "box_PlaySequence_v5_6.Finished", "box_OnceOnly_v3_1.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_6_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|179218997", "179218997", "S08M010_CIN_HRScolding_Main", "box_PlaySequence_v5_6.Skipped", "box_CinematicPrep_4.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Show_Or_Hide_All_UI_2_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_hrscolding.domino|@S08M010_CIN_HRScolding_Main|1053011477", "1053011477", "S08M010_CIN_HRScolding_Main", "box_Show_Or_Hide_All_UI_2.Hidden", "box_Timer_v2_9.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_OnceOnly_v3_1()
end
function export:out()
end
_compilerVersion = 4
