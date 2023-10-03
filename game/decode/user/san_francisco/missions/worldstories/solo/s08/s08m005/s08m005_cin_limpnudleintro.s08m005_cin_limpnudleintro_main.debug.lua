export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S08M005_CIN_LimpNudleIntro_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.HQ_Talker = {}
  self.box_OnceOnly_v3_6 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_6
  l0._graph = self
  l0._name = "box_OnceOnly_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|302266774"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_6_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|573071579"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|652164631"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_4_PostOut
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|705059838"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_GetNPC_9 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_9
  l0._graph = self
  l0._name = "box_GetNPC_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|707979731"
  l0.GotNPCList = self.f_box_GetNPC_9_GotNPCList
  self.box_GetNPC_7 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_7
  l0._graph = self
  l0._name = "box_GetNPC_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|804668867"
  l0.GotNPCList = self.f_box_GetNPC_7_GotNPCList
  self.box_Timer_v2_3 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_3
  l0._graph = self
  l0._name = "box_Timer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1037140299"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1956047400"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1624890055", "1624890055", "S08M005_CIN_LimpNudleIntro_Main", "In", "box_CinematicPrep_2.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_VisibilityController_v2_13_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047779474426"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_LimpNudleIntro_CIN/s08_limpnudleintro_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1539094551", "1539094551", "S08M005_CIN_LimpNudleIntro_Main", "box_VisibilityController_v2_13.Hidden", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372056579853585"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1668821047"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_14_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_OnceOnly_v3_6
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|520637971", "520637971", "S08M005_CIN_LimpNudleIntro_Main", "box_OnceOnly_v3_6.Out", "box_VisibilityController_v2_14.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_11_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372072386919498"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1269906360"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_12_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1491574526", "1491574526", "S08M005_CIN_LimpNudleIntro_Main", "box_VisibilityController_v2_11.Shown", "box_CollisionController_12.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1333297206", "1333297206", "S08M005_CIN_LimpNudleIntro_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|293999759", "293999759", "S08M005_CIN_LimpNudleIntro_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(0)
end
function export:f_box_VisibilityController_v2_10_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372072386919498"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|372543427"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_11_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|893563184", "893563184", "S08M005_CIN_LimpNudleIntro_Main", "box_VisibilityController_v2_10.Hidden", "box_VisibilityController_v2_11.Show", clone, l0)
  l0:Show()
end
function export:f_box_CinematicPrep_4_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|433403961", "433403961", "S08M005_CIN_LimpNudleIntro_Main", "box_CinematicPrep_4.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_VisibilityController_v2_8_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|942991661", "942991661", "S08M005_CIN_LimpNudleIntro_Main", "box_VisibilityController_v2_8.Shown", "box_Timer_v2_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_9
  l0.Group = "HQ_Talker"
  l0 = self.box_Timer_v2_5
  l1 = self.box_GetNPC_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|926426026", "926426026", "S08M005_CIN_LimpNudleIntro_Main", "box_Timer_v2_5.TimeElapsed", "box_GetNPC_9.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_GetNPC_9_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_9
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|624782735"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_10_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_9
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1427604551", "1427604551", "S08M005_CIN_LimpNudleIntro_Main", "box_GetNPC_9.GotNPCList", "box_VisibilityController_v2_10.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_GetNPC_7_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_7
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|704702417"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_8_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_7
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1710308327", "1710308327", "S08M005_CIN_LimpNudleIntro_Main", "box_GetNPC_7.GotNPCList", "box_VisibilityController_v2_8.Show", l0, l1)
  l1:Show()
end
function export:f_box_Timer_v2_3_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_3
  l1 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1119898946", "1119898946", "S08M005_CIN_LimpNudleIntro_Main", "box_Timer_v2_3.TimeElapsed", "box_CinematicPrep_4.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CollisionController_12_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372056579853585"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|93880534"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_13_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|511443792", "511443792", "S08M005_CIN_LimpNudleIntro_Main", "box_CollisionController_12.CollisionsDisabled", "box_VisibilityController_v2_13.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_14_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GetNPC_7
  l0.Group = "HQ_Talker"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|1944008348", "1944008348", "S08M005_CIN_LimpNudleIntro_Main", "box_VisibilityController_v2_14.Shown", "box_GetNPC_7.GetAll", clone, l0)
  l0:GetAll()
end
function export:f_box_CinematicPrep_2_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_2
  l1 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\s08m005_cin_limpnudleintro.domino|@S08M005_CIN_LimpNudleIntro_Main|273172884", "273172884", "S08M005_CIN_LimpNudleIntro_Main", "box_CinematicPrep_2.PreOut", "box_Timer_v2_5.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_OnceOnly_v3_6()
end
function export:Out()
end
_compilerVersion = 4
