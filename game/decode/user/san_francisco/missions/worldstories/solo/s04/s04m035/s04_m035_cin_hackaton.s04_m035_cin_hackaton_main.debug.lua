export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S04_M035_CIN_Hackaton_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_PlaySequence_v5_4 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_4
  l0._graph = self
  l0._name = "box_PlaySequence_v5_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|398678831"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_4_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_4_Finished
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|848394570"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_3 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_3
  l0._graph = self
  l0._name = "box_OnceOnly_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|1379370776"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_3_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|1942861484"
  l0.PreOut = self.f_box_CinematicPrep_2_PreOut
  l0.PostOut = DummyFunction
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
  l0 = self.box_CinematicPrep_2
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|525420489", "525420489", "S04_M035_CIN_Hackaton_Main", "In", "box_CinematicPrep_2.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_SetTimeOfDay_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_7
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|977682299", "977682299", "S04_M035_CIN_Hackaton_Main", "box_SetTimeOfDay_9.Out", "box_Timer_v2_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_4_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_3()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|389023925", "389023925", "S04_M035_CIN_Hackaton_Main", "box_PlaySequence_v5_4.Finished", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_4_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_3()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|794608680", "794608680", "S04_M035_CIN_Hackaton_Main", "box_PlaySequence_v5_4.Skipped", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|1379846679", "1379846679", "S04_M035_CIN_Hackaton_Main", "box_Timer_v2_7.TimeElapsed", "Out", l0, self)
  self:Out()
end
function export:f_box_OnceOnly_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 22
  l0.Minute = 40
  l0._graph = self
  l0._name = "box_SetTimeOfDay_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|379720532"
  l0.Out = self.f_box_SetTimeOfDay_9_Out
  l0 = self.box_OnceOnly_v3_3
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|893649356", "893649356", "S04_M035_CIN_Hackaton_Main", "box_OnceOnly_v3_3.Out", "box_SetTimeOfDay_9.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_CinematicPrep_2_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_4
  l0.SceneEntity = "9223372046601120186"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_Hackathon_CIN/s04_hackathon_cin.seq"
  l0 = self.box_CinematicPrep_2
  l1 = self.box_PlaySequence_v5_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\s04_m035_cin_hackaton.domino|@S04_M035_CIN_Hackaton_Main|489965824", "489965824", "S04_M035_CIN_Hackaton_Main", "box_CinematicPrep_2.PreOut", "box_PlaySequence_v5_4.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_OnceOnly_v3_3()
end
function export:Out()
end
_compilerVersion = 4
