export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S13_M040_CIN_Launch_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|174888703"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_2_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
  self.box_OnceOnly_v3_6 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_6
  l0._graph = self
  l0._name = "box_OnceOnly_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|283298673"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_6_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|632593764"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|1275437284"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_4 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_4
  l0._graph = self
  l0._name = "box_Timer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|1460688029"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_10 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_10
  l0._graph = self
  l0._name = "box_OnceOnly_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|1930928843"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_10_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_8 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_8
  l0._graph = self
  l0._name = "box_PlaySequence_v5_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|2082167248"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_8_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_8_Finished
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
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|98876932", "98876932", "S13_M040_CIN_Launch_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_10()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|2054182038", "2054182038", "S13_M040_CIN_Launch_Main", "box_PlaySequence_v5_2.Finished", "box_OnceOnly_v3_10.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_2_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_10()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|2129730892", "2129730892", "S13_M040_CIN_Launch_Main", "box_PlaySequence_v5_2.Skipped", "box_OnceOnly_v3_10.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_4
  l0.Seconds = 4
  l0 = self.box_OnceOnly_v3_6
  l1 = self.box_Timer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|1122619425", "1122619425", "S13_M040_CIN_Launch_Main", "box_OnceOnly_v3_6.Out", "box_Timer_v2_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|1269039262", "1269039262", "S13_M040_CIN_Launch_Main", "box_Timer_v2_5.TimeElapsed", "Out", l0, self)
  self:Out()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_8
  l0.SceneEntity = "9223372047779474444"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S13/S13_Launch_CIN/s13_launch_cin.seq"
  l0 = self.box_CinematicPrep_1
  l1 = self.box_PlaySequence_v5_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|1337139175", "1337139175", "S13_M040_CIN_Launch_Main", "box_CinematicPrep_1.PreOut", "box_PlaySequence_v5_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_4_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372055541730446"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S13/S13_M040_LaunchPostMarcusComputer/s13_m040_launchpostmarcuscomputer.seq"
  l0 = self.box_Timer_v2_4
  l1 = self.box_PlaySequence_v5_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|1447547358", "1447547358", "S13_M040_CIN_Launch_Main", "box_Timer_v2_4.TimeElapsed", "box_PlaySequence_v5_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_10
  l1 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|179534969", "179534969", "S13_M040_CIN_Launch_Main", "box_OnceOnly_v3_10.Out", "box_Timer_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_8_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_8
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|507033770", "507033770", "S13_M040_CIN_Launch_Main", "box_PlaySequence_v5_8.Finished", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_8_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_8
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13_m040_cin_launch.domino|@S13_M040_CIN_Launch_Main|726527947", "726527947", "S13_M040_CIN_Launch_Main", "box_PlaySequence_v5_8.Skipped", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_OnceOnly_v3_6()
end
function export:OnEnter_box_OnceOnly_v3_10()
end
function export:Out()
end
_compilerVersion = 4
