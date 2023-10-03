export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S16M005_CIN_ShanghaiedIntro_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main"
  self.cin_out = DummyFunction
  self.PlayerEntity = nil
  self.HQ_Talker = {}
  self.box_Timer_v2_2 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_2
  l0._graph = self
  l0._name = "box_Timer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|105793921"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_GetNPC_1 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_1
  l0._graph = self
  l0._name = "box_GetNPC_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|349415971"
  l0.GotNPCList = self.f_box_GetNPC_1_GotNPCList
  self.box_GetNPC_10 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_10
  l0._graph = self
  l0._name = "box_GetNPC_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|783308638"
  l0.GotNPCList = self.f_box_GetNPC_10_GotNPCList
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|1040827620"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_5 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|1066059344"
  l0.PreOut = self.f_box_CinematicPrep_5_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|1095020164"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_7 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_7
  l0._graph = self
  l0._name = "box_CinematicPrep_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|1109601092"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_7_PostOut
  self.box_PlaySequence_v5_3 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_3
  l0._graph = self
  l0._name = "box_PlaySequence_v5_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|2135852722"
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
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|241847164", "241847164", "S16M005_CIN_ShanghaiedIntro_Main", "In", "box_CinematicPrep_5.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Timer_v2_2_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_3
  l0.SceneEntity = "9223372047779474446"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_ShanghaiedIntro_CIN/s16_shanghaiedintro_cin.seq"
  l0 = self.box_Timer_v2_2
  l1 = self.box_PlaySequence_v5_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|1794126499", "1794126499", "S16M005_CIN_ShanghaiedIntro_Main", "box_Timer_v2_2.TimeElapsed", "box_PlaySequence_v5_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_GetNPC_1_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_1
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|1568232614"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_4_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_1
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|160865278", "160865278", "S16M005_CIN_ShanghaiedIntro_Main", "box_GetNPC_1.GotNPCList", "box_VisibilityController_v2_4.Show", l0, l1)
  l1:Show()
end
function export:f_box_GetNPC_10_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_10
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|2120309417"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_11_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_10
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|721022646", "721022646", "S16M005_CIN_ShanghaiedIntro_Main", "box_GetNPC_10.GotNPCList", "box_VisibilityController_v2_11.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_8
  l1 = self.box_Timer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|1514531768", "1514531768", "S16M005_CIN_ShanghaiedIntro_Main", "box_OnceOnly_v3_8.Out", "box_Timer_v2_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_5_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_10
  l0.Group = "HQ_Talker"
  l0 = self.box_CinematicPrep_5
  l1 = self.box_GetNPC_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|1225548738", "1225548738", "S16M005_CIN_ShanghaiedIntro_Main", "box_CinematicPrep_5.PreOut", "box_GetNPC_10.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_1
  l0.Group = "HQ_Talker"
  l0 = self.box_Timer_v2_9
  l1 = self.box_GetNPC_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|2066466213", "2066466213", "S16M005_CIN_ShanghaiedIntro_Main", "box_Timer_v2_9.TimeElapsed", "box_GetNPC_1.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_CinematicPrep_7_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|214937766", "214937766", "S16M005_CIN_ShanghaiedIntro_Main", "box_CinematicPrep_7.PostOut", "cin_out", l0, self)
  self:cin_out()
end
function export:f_box_VisibilityController_v2_4_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_7
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|1076119362", "1076119362", "S16M005_CIN_ShanghaiedIntro_Main", "box_VisibilityController_v2_4.Shown", "box_CinematicPrep_7.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_VisibilityController_v2_11_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|832093805", "832093805", "S16M005_CIN_ShanghaiedIntro_Main", "box_VisibilityController_v2_11.Hidden", "box_Timer_v2_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_3_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|980028001", "980028001", "S16M005_CIN_ShanghaiedIntro_Main", "box_PlaySequence_v5_3.Finished", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_3_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005_CIN_ShanghaiedIntro.domino|@S16M005_CIN_ShanghaiedIntro_Main|33748267", "33748267", "S16M005_CIN_ShanghaiedIntro_Main", "box_PlaySequence_v5_3.Skipped", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:cin_out()
end
_compilerVersion = 4
