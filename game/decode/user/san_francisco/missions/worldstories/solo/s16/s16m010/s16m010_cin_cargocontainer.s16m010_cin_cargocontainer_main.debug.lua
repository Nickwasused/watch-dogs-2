export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S16M010_CIN_CargoContainer_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main"
  self.cin_out = DummyFunction
  self.PlayerEntity = nil
  self.Han = nil
  self.box_Timer_v2_1 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_1
  l0._graph = self
  l0._name = "box_Timer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|132524792"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|549804069"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|876141202"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_12 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_12
  l0._graph = self
  l0._name = "box_CLOController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1302542766"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_12_OnUserInPlace
  self.box_PlaySequence_v5_11 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_11
  l0._graph = self
  l0._name = "box_PlaySequence_v5_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1339893879"
  l0._DynamicAnchors = {
    EntityIn = {"Han"}
  }
  l0.Started = self.f_box_PlaySequence_v5_11_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1799711063"
  l0.PreOut = self.f_box_CinematicPrep_2_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySequence_v5_6 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_6
  l0._graph = self
  l0._name = "box_PlaySequence_v5_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1944379821"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_6_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_6_Finished
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|2061353051"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_3_PostOut
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
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|885004165", "885004165", "S16M010_CIN_CargoContainer_Main", "In", "box_CinematicPrep_2.PreCinematic", self, l0)
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
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372070171139822"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = 1
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|62003607"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|707802237", "707802237", "S16M010_CIN_CargoContainer_Main", "box_VisibilityController_v2_13.Hidden", "box_Cinema_Zone_Cleanup_5.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Cinema_Zone_Cleanup_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1749634862", "1749634862", "S16M010_CIN_CargoContainer_Main", "box_Cinema_Zone_Cleanup_5.Out", "box_Timer_v2_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_1_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Han
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0.HackCategoryType[2] = nil
  l0.HackCategoryType[3] = nil
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|383415173"
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_box_DPad_Hackable_Controller_4_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0 = self.box_Timer_v2_1
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1195136663", "1195136663", "S16M010_CIN_CargoContainer_Main", "box_Timer_v2_1.TimeElapsed", "box_DPad_Hackable_Controller_4.RemoveAll", l0, l1)
  l1:RemoveAll()
end
function export:f_box_DPad_Hackable_Controller_4_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372049914361175"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1847014130"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_14_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|833499080", "833499080", "S16M010_CIN_CargoContainer_Main", "box_DPad_Hackable_Controller_4.RemovedAll", "box_VisibilityController_v2_14.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_9_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372060745416234"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1155268966"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_15_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|825644026", "825644026", "S16M010_CIN_CargoContainer_Main", "box_VisibilityController_v2_9.Hidden", "box_CollisionController_15.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CollisionController_19_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372049914361175"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|43806360"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_13_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|384342228", "384342228", "S16M010_CIN_CargoContainer_Main", "box_CollisionController_19.CollisionsDisabled", "box_VisibilityController_v2_13.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060745416234"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|407072090"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_9_Hidden
  l0.Out = DummyFunction
  l0 = self.box_OnceOnly_v3_8
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1413924202", "1413924202", "S16M010_CIN_CargoContainer_Main", "box_OnceOnly_v3_8.Out", "box_VisibilityController_v2_9.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VisibilityController_v2_16_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372069614417474"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|704694656"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = self.f_box_CollisionController_17_CollisionsEnabled
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|102101597", "102101597", "S16M010_CIN_CargoContainer_Main", "box_VisibilityController_v2_16.Shown", "box_CollisionController_17.EnableCollisions", clone, l0)
  l0:EnableCollisions()
end
function export:f_box_CollisionController_17_CollisionsEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_12
  l0.CLO = "9223372056455554410"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|478712036", "478712036", "S16M010_CIN_CargoContainer_Main", "box_CollisionController_17.CollisionsEnabled", "box_CLOController_12.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_6
  l0.SceneEntity = "9223372047683038349"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_CargoContainer_CIN/s16_cargocontainer_cin.seq"
  l0 = self.box_Timer_v2_7
  l1 = self.box_PlaySequence_v5_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|117164775", "117164775", "S16M010_CIN_CargoContainer_Main", "box_Timer_v2_7.TimeElapsed", "box_PlaySequence_v5_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_CollisionController_15_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069614417474"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|570666283"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_16_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|978993520", "978993520", "S16M010_CIN_CargoContainer_Main", "box_CollisionController_15.CollisionsDisabled", "box_VisibilityController_v2_16.Show", clone, l0)
  l0:Show()
end
function export:f_box_CLOController_12_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_12
  self.Han = l0.UserID
  l0 = self.box_PlaySequence_v5_11
  l0.SceneEntity = "9223372061113495780"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_SCR_HanGround/s16_scr_hanground.seq"
  l0.EntityIn.Han = self.Han
  l0 = self.box_CLOController_12
  l1 = self.box_PlaySequence_v5_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|2084868791", "2084868791", "S16M010_CIN_CargoContainer_Main", "box_CLOController_12.OnUserInPlace", "box_PlaySequence_v5_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_11_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_11
  l1 = self.box_Timer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|846863941", "846863941", "S16M010_CIN_CargoContainer_Main", "box_PlaySequence_v5_11.Started", "box_Timer_v2_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Lanes_Restrictions_Control_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069614417474"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|2136473160"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_18_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|769101853", "769101853", "S16M010_CIN_CargoContainer_Main", "box_Lanes_Restrictions_Control_10.Out", "box_VisibilityController_v2_18.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CinematicPrep_2_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055578003974"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1436883499"
  l0.Out = self.f_box_Lanes_Restrictions_Control_10_Out
  l0 = self.box_CinematicPrep_2
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1665360304", "1665360304", "S16M010_CIN_CargoContainer_Main", "box_CinematicPrep_2.PreOut", "box_Lanes_Restrictions_Control_10.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_14_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|586098916", "586098916", "S16M010_CIN_CargoContainer_Main", "box_VisibilityController_v2_14.Shown", "box_CinematicPrep_3.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_PlaySequence_v5_6_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1201667890", "1201667890", "S16M010_CIN_CargoContainer_Main", "box_PlaySequence_v5_6.Finished", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_6_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|103064818", "103064818", "S16M010_CIN_CargoContainer_Main", "box_PlaySequence_v5_6.Skipped", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_3_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|499889803", "499889803", "S16M010_CIN_CargoContainer_Main", "box_CinematicPrep_3.PostOut", "cin_out", l0, self)
  self:cin_out()
end
function export:f_box_VisibilityController_v2_18_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372069614417474"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|468285060"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_19_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010_CIN_CargoContainer.domino|@S16M010_CIN_CargoContainer_Main|1311418619", "1311418619", "S16M010_CIN_CargoContainer_Main", "box_VisibilityController_v2_18.Hidden", "box_CollisionController_19.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:cin_out()
end
_compilerVersion = 4
