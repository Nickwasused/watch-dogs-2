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
  self._name = "S07_M030_SCR_GroupPhoto_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_scr_groupphoto.domino|@S07_M030_SCR_GroupPhoto_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_Timer_v2_2 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_2
  l0._graph = self
  l0._name = "box_Timer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_scr_groupphoto.domino|@S07_M030_SCR_GroupPhoto_Main|917318772"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_scr_groupphoto.domino|@S07_M030_SCR_GroupPhoto_Main|951761891"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_scr_groupphoto.domino|@S07_M030_SCR_GroupPhoto_Main|1090477673"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_6 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_6
  l0._graph = self
  l0._name = "box_PlaySequence_v5_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_scr_groupphoto.domino|@S07_M030_SCR_GroupPhoto_Main|1362340976"
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
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_scr_groupphoto.domino|@S07_M030_SCR_GroupPhoto_Main|1474987718", "1474987718", "S07_M030_SCR_GroupPhoto_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Timer_v2_2_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_scr_groupphoto.domino|@S07_M030_SCR_GroupPhoto_Main|27935499", "27935499", "S07_M030_SCR_GroupPhoto_Main", "box_Timer_v2_2.TimeElapsed", "Out", l0, self)
  self:Out()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_6
  l0.SceneEntity = "9223372050330162707"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/s07_groupphoto.seq"
  l0 = self.box_CinematicPrep_1
  l1 = self.box_PlaySequence_v5_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_scr_groupphoto.domino|@S07_M030_SCR_GroupPhoto_Main|1577466078", "1577466078", "S07_M030_SCR_GroupPhoto_Main", "box_CinematicPrep_1.PreOut", "box_PlaySequence_v5_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_5
  l1 = self.box_Timer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_scr_groupphoto.domino|@S07_M030_SCR_GroupPhoto_Main|853642845", "853642845", "S07_M030_SCR_GroupPhoto_Main", "box_OnceOnly_v3_5.Out", "box_Timer_v2_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_6_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_scr_groupphoto.domino|@S07_M030_SCR_GroupPhoto_Main|1401504469", "1401504469", "S07_M030_SCR_GroupPhoto_Main", "box_PlaySequence_v5_6.Finished", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_6_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_5()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_scr_groupphoto.domino|@S07_M030_SCR_GroupPhoto_Main|1910472666", "1910472666", "S07_M030_SCR_GroupPhoto_Main", "box_PlaySequence_v5_6.Skipped", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_OnceOnly_v3_5()
end
function export:Out()
end
_compilerVersion = 4
