export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S14_M070_CIN_Snipers_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Josh = nil
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|155898385"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_14_OnUserInPlace
  self.box_CinematicPrep_7 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_7
  l0._graph = self
  l0._name = "box_CinematicPrep_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|249013924"
  l0.PreOut = self.f_box_CinematicPrep_7_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1132586598"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1179289419"
  l0.PreOut = self.f_box_CinematicPrep_3_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1260723430"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1679489298"
  l0.Started = self.f_box_PlaySequence_v5_1_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
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
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|685656327", "685656327", "S14_M070_CIN_Snipers_Main", "In", "box_CinematicPrep_3.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_CollisionController_13_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_14
  l0.CLO = "9223372048723387788"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1987137169", "1987137169", "S14_M070_CIN_Snipers_Main", "box_CollisionController_13.CollisionsDisabled", "box_CLOController_14.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_14_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  self.Josh = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Josh
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|538538602"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOController_14
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|53342072", "53342072", "S14_M070_CIN_Snipers_Main", "box_CLOController_14.OnUserInPlace", "box_CollisionController_15.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_CinematicPrep_7_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_CinematicPrep_7
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1973493452", "1973493452", "S14_M070_CIN_Snipers_Main", "box_CinematicPrep_7.PreOut", "box_OnceOnly_v3_8.In", l0, l1)
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
  self:OnEnter_box_CollisionController_13()
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1295144030", "1295144030", "S14_M070_CIN_Snipers_Main", "box_VisibilityController_v2_10.Hidden", "box_CollisionController_13.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_10_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CollisionController_13()
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|648648638", "648648638", "S14_M070_CIN_Snipers_Main", "box_VisibilityController_v2_10.Shown", "box_CollisionController_13.EnableCollisions", clone, l0)
  l0:EnableCollisions()
end
function export:f_box_Show_Or_Hide_All_UI_4_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372070446783107"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|2095271688"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1428663612", "1428663612", "S14_M070_CIN_Snipers_Main", "box_Show_Or_Hide_All_UI_4.Hidden", "box_Cinema_Zone_Cleanup_5.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1654618759", "1654618759", "S14_M070_CIN_Snipers_Main", "box_Ordered_Output_11.Out", "box_Timer_v2_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_10()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1598328812", "1598328812", "S14_M070_CIN_Snipers_Main", "box_Ordered_Output_11.Out", "box_VisibilityController_v2_10.Show", clone, l0)
  l0:Show()
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|884090831"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0 = self.box_OnceOnly_v3_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|853136873", "853136873", "S14_M070_CIN_Snipers_Main", "box_OnceOnly_v3_8.Out", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_3_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|686081543"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_4_Hidden
  l0 = self.box_CinematicPrep_3
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|843659130", "843659130", "S14_M070_CIN_Snipers_Main", "box_CinematicPrep_3.PreOut", "box_Show_Or_Hide_All_UI_4.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|142583299", "142583299", "S14_M070_CIN_Snipers_Main", "box_Timer_v2_9.TimeElapsed", "Out", l0, self)
  self:Out()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|590424356", "590424356", "S14_M070_CIN_Snipers_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_7
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_CinematicPrep_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|182325001", "182325001", "S14_M070_CIN_Snipers_Main", "box_PlaySequence_v5_1.Skipped", "box_CinematicPrep_7.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_PlaySequence_v5_1_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_10()
  l0 = self.box_PlaySequence_v5_1
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1285099253", "1285099253", "S14_M070_CIN_Snipers_Main", "box_PlaySequence_v5_1.Started", "box_VisibilityController_v2_10.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Cinema_Zone_Cleanup_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047235834232"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/S14_Snipers_CIN/s14_snipers_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|1692877376", "1692877376", "S14_M070_CIN_Snipers_Main", "box_Cinema_Zone_Cleanup_5.Out", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_CollisionController_13()
  local l0
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372066729840092"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|48743400"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_13_CollisionsDisabled
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_10()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372066729840092"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14_m070_cin_snipers.domino|@S14_M070_CIN_Snipers_Main|349630623"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_10_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_10_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:Out()
end
_compilerVersion = 4
