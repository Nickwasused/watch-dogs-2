export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S04M020_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main"
  self.Out = DummyFunction
  self.OutHideInsideTruck = DummyFunction
  self.OutShowInsideTruck = DummyFunction
  self.OutDisableCollision = DummyFunction
  self.PlayerEntity = nil
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1172054058"
  l0.PreOut = self.f_box_CinematicPrep_2_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1534978075"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2070548000"
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
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1001871666", "1001871666", "S04M020_SCR_Main", "In", "box_CinematicPrep_2.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:InDisableCollision()
  local l0
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014866"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1667346777"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_5_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|45968971", "45968971", "S04M020_SCR_Main", "InDisableCollision", "box_CollisionController_5.DisableCollisions", self, l0)
  l0:DisableCollisions()
end
function export:InHideInsideTruck()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014866"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1087215787"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_4_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1580250732", "1580250732", "S04M020_SCR_Main", "InHideInsideTruck", "box_VisibilityController_v2_4.Hide", self, l0)
  l0:Hide()
end
function export:InShowInsideTruck()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014866"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|552873801"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_66_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|979535324", "979535324", "S04M020_SCR_Main", "InShowInsideTruck", "box_VisibilityController_v2_66.Show", self, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_36_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014877"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1742814295"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_37_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|562288194", "562288194", "S04M020_SCR_Main", "box_VisibilityController_v2_36.Hidden", "box_VisibilityController_v2_37.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_86_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906016168"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1284617253"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_87_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|224757568", "224757568", "S04M020_SCR_Main", "box_CollisionController_86.CollisionsDisabled", "box_CollisionController_87.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_102_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016165"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1067935040"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_108_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|813709104", "813709104", "S04M020_SCR_Main", "box_VisibilityController_v2_102.Shown", "box_VisibilityController_v2_108.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_85_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1977020926", "1977020926", "S04M020_SCR_Main", "box_VisibilityController_v2_85.Hidden", "OutHideInsideTruck", clone, self)
  self:OutHideInsideTruck()
end
function export:f_box_VisibilityController_v2_84_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016173"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|98776917"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_85_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2145610539", "2145610539", "S04M020_SCR_Main", "box_VisibilityController_v2_84.Hidden", "box_VisibilityController_v2_85.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_22_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014884"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1537836103"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_21_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|452079198", "452079198", "S04M020_SCR_Main", "box_CollisionController_22.CollisionsDisabled", "box_CollisionController_21.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_61_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014892"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1259630647"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_63_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|678006853", "678006853", "S04M020_SCR_Main", "box_VisibilityController_v2_61.Shown", "box_VisibilityController_v2_63.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_98_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1654879099", "1654879099", "S04M020_SCR_Main", "box_VisibilityController_v2_98.Shown", "OutShowInsideTruck", clone, self)
  self:OutShowInsideTruck()
end
function export:f_box_VisibilityController_v2_31_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014874"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|800789258"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_32_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|610392320", "610392320", "S04M020_SCR_Main", "box_VisibilityController_v2_31.Hidden", "box_VisibilityController_v2_32.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_89_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906016165"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1304039309"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_88_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|438615024", "438615024", "S04M020_SCR_Main", "box_CollisionController_89.CollisionsDisabled", "box_CollisionController_88.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CollisionController_6_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014870"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1595111931"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_7_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|630678039", "630678039", "S04M020_SCR_Main", "box_CollisionController_6.CollisionsDisabled", "box_CollisionController_7.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_48_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014894"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|703138625"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_49_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|794952668", "794952668", "S04M020_SCR_Main", "box_VisibilityController_v2_48.Hidden", "box_VisibilityController_v2_49.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_53_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014881"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2001805255"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_58_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|717694530", "717694530", "S04M020_SCR_Main", "box_VisibilityController_v2_53.Shown", "box_VisibilityController_v2_58.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_38_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014879"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|621923154"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_39_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|279709127", "279709127", "S04M020_SCR_Main", "box_VisibilityController_v2_38.Hidden", "box_VisibilityController_v2_39.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_67_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014876"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1908266240"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_62_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1441760686", "1441760686", "S04M020_SCR_Main", "box_VisibilityController_v2_67.Shown", "box_VisibilityController_v2_62.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_64_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070267815453"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1552652290"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_60_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1979613341", "1979613341", "S04M020_SCR_Main", "box_VisibilityController_v2_64.Shown", "box_VisibilityController_v2_60.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_80_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016166"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1216535783"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_81_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1204109229", "1204109229", "S04M020_SCR_Main", "box_VisibilityController_v2_80.Hidden", "box_VisibilityController_v2_81.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_66_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014868"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1900184767"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_68_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1341963897", "1341963897", "S04M020_SCR_Main", "box_VisibilityController_v2_66.Shown", "box_VisibilityController_v2_68.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_79_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016165"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|502264251"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_80_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|834589723", "834589723", "S04M020_SCR_Main", "box_VisibilityController_v2_79.Hidden", "box_VisibilityController_v2_80.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_39_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070625029676"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1663532679"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_40_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2100475330", "2100475330", "S04M020_SCR_Main", "box_VisibilityController_v2_39.Hidden", "box_VisibilityController_v2_40.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_95_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906016164"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|270314086"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_89_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1741581880", "1741581880", "S04M020_SCR_Main", "box_CollisionController_95.CollisionsDisabled", "box_CollisionController_89.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_28_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014870"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1028850247"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_29_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|892180397", "892180397", "S04M020_SCR_Main", "box_VisibilityController_v2_28.Hidden", "box_VisibilityController_v2_29.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_55_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014872"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1183580427"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_69_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|850840277", "850840277", "S04M020_SCR_Main", "box_VisibilityController_v2_55.Shown", "box_VisibilityController_v2_69.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_49_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014895"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1494823183"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_50_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1386347229", "1386347229", "S04M020_SCR_Main", "box_VisibilityController_v2_49.Hidden", "box_VisibilityController_v2_50.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_13_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014877"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1371351832"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_14_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1135716262", "1135716262", "S04M020_SCR_Main", "box_CollisionController_13.CollisionsDisabled", "box_CollisionController_14.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_35_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014876"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|24702802"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_36_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|693890737", "693890737", "S04M020_SCR_Main", "box_VisibilityController_v2_35.Hidden", "box_VisibilityController_v2_36.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_32_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070267815453"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1080111506"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_34_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1071035702", "1071035702", "S04M020_SCR_Main", "box_VisibilityController_v2_32.Hidden", "box_VisibilityController_v2_34.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_12_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014876"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|729531267"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_13_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|571834069", "571834069", "S04M020_SCR_Main", "box_CollisionController_12.CollisionsDisabled", "box_CollisionController_13.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_75_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016157"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1541062792"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_76_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1621416023", "1621416023", "S04M020_SCR_Main", "box_VisibilityController_v2_75.Hidden", "box_VisibilityController_v2_76.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_51_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014885"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|133366160"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_61_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1936533217", "1936533217", "S04M020_SCR_Main", "box_VisibilityController_v2_51.Shown", "box_VisibilityController_v2_61.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_56_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014878"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1522934468"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_72_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|190325255", "190325255", "S04M020_SCR_Main", "box_VisibilityController_v2_56.Shown", "box_VisibilityController_v2_72.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_44_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014884"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1559994998"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_45_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|345583656", "345583656", "S04M020_SCR_Main", "box_VisibilityController_v2_44.Hidden", "box_VisibilityController_v2_45.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_96_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014897"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|624000586"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_95_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|457331899", "457331899", "S04M020_SCR_Main", "box_CollisionController_96.CollisionsDisabled", "box_CollisionController_95.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_104_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016173"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|150729753"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_98_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1103902831", "1103902831", "S04M020_SCR_Main", "box_VisibilityController_v2_104.Shown", "box_VisibilityController_v2_98.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_29_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014872"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1344159453"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_30_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1235185414", "1235185414", "S04M020_SCR_Main", "box_VisibilityController_v2_29.Hidden", "box_VisibilityController_v2_30.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_24_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014893"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1942632191"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_25_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1525924466", "1525924466", "S04M020_SCR_Main", "box_CollisionController_24.CollisionsDisabled", "box_CollisionController_25.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_108_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016166"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1970053356"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_107_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|756981640", "756981640", "S04M020_SCR_Main", "box_VisibilityController_v2_108.Shown", "box_VisibilityController_v2_107.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_103_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016156"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1670017131"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_99_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1904387270", "1904387270", "S04M020_SCR_Main", "box_VisibilityController_v2_103.Shown", "box_VisibilityController_v2_99.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_34_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014875"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|760834318"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_35_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|53066534", "53066534", "S04M020_SCR_Main", "box_VisibilityController_v2_34.Hidden", "box_VisibilityController_v2_35.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_4_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014868"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|652681454"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_28_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|82548893", "82548893", "S04M020_SCR_Main", "box_VisibilityController_v2_4.Hidden", "box_VisibilityController_v2_28.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_9_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014874"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1586537858"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_10_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1746327490", "1746327490", "S04M020_SCR_Main", "box_CollisionController_9.CollisionsDisabled", "box_CollisionController_10.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CollisionController_92_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906016157"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1961261366"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_90_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|213607867", "213607867", "S04M020_SCR_Main", "box_CollisionController_92.CollisionsDisabled", "box_CollisionController_90.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CollisionController_27_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906016155"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1865485126"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_94_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|802773170", "802773170", "S04M020_SCR_Main", "box_CollisionController_27.CollisionsDisabled", "box_CollisionController_94.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CinematicPrep_2_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372063966591958"
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
  l0._name = "box_Cinema_Zone_Cleanup_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1890328944"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_33_Out
  l0 = self.box_CinematicPrep_2
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|898632855", "898632855", "S04M020_SCR_Main", "box_CinematicPrep_2.PreOut", "box_Cinema_Zone_Cleanup_33.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_VisibilityController_v2_69_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070267815445"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1789679331"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_52_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1225956334", "1225956334", "S04M020_SCR_Main", "box_VisibilityController_v2_69.Shown", "box_VisibilityController_v2_52.Show", clone, l0)
  l0:Show()
end
function export:f_box_CollisionController_93_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906016173"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1767478296"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_97_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|772041813", "772041813", "S04M020_SCR_Main", "box_CollisionController_93.CollisionsDisabled", "box_CollisionController_97.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_81_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016168"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2106114783"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_82_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2112272380", "2112272380", "S04M020_SCR_Main", "box_VisibilityController_v2_81.Hidden", "box_VisibilityController_v2_82.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_78_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016164"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|557347185"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_79_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|53005113", "53005113", "S04M020_SCR_Main", "box_VisibilityController_v2_78.Hidden", "box_VisibilityController_v2_79.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_63_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014893"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1785292440"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_54_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|822733009", "822733009", "S04M020_SCR_Main", "box_VisibilityController_v2_63.Shown", "box_VisibilityController_v2_54.Show", clone, l0)
  l0:Show()
end
function export:f_box_CollisionController_87_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906016170"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2119900859"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_91_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1230426006", "1230426006", "S04M020_SCR_Main", "box_CollisionController_87.CollisionsDisabled", "box_CollisionController_91.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_57_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014895"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1750666941"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_70_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|962435163", "962435163", "S04M020_SCR_Main", "box_VisibilityController_v2_57.Shown", "box_VisibilityController_v2_70.Show", clone, l0)
  l0:Show()
end
function export:f_box_CollisionController_88_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906016166"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|42728622"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_86_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|697885593", "697885593", "S04M020_SCR_Main", "box_CollisionController_88.CollisionsDisabled", "box_CollisionController_86.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_73_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014884"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|917255674"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_51_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1176221406", "1176221406", "S04M020_SCR_Main", "box_VisibilityController_v2_73.Shown", "box_VisibilityController_v2_51.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_46_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014892"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1366996274"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_47_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|210855929", "210855929", "S04M020_SCR_Main", "box_VisibilityController_v2_46.Hidden", "box_VisibilityController_v2_47.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_30_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070267815445"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|241931067"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_31_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|836243923", "836243923", "S04M020_SCR_Main", "box_VisibilityController_v2_30.Hidden", "box_VisibilityController_v2_31.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_77_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014897"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1248468361"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_78_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1606175904", "1606175904", "S04M020_SCR_Main", "box_VisibilityController_v2_77.Hidden", "box_VisibilityController_v2_78.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_47_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014893"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|295033096"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_48_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|207730745", "207730745", "S04M020_SCR_Main", "box_VisibilityController_v2_47.Hidden", "box_VisibilityController_v2_48.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_14_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014878"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2091301037"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_15_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1261236550", "1261236550", "S04M020_SCR_Main", "box_CollisionController_14.CollisionsDisabled", "box_CollisionController_15.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CollisionController_23_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014892"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1034469040"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_24_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1245461905", "1245461905", "S04M020_SCR_Main", "box_CollisionController_23.CollisionsDisabled", "box_CollisionController_24.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CollisionController_16_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070625029676"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2035633255"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_18_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1679334334", "1679334334", "S04M020_SCR_Main", "box_CollisionController_16.CollisionsDisabled", "box_CollisionController_18.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_42_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014882"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2041449533"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_43_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1207285035", "1207285035", "S04M020_SCR_Main", "box_VisibilityController_v2_42.Hidden", "box_VisibilityController_v2_43.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_11_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014875"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|808704608"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_12_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|569767138", "569767138", "S04M020_SCR_Main", "box_CollisionController_11.CollisionsDisabled", "box_CollisionController_12.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_50_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016155"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1886755572"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_74_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|419666698", "419666698", "S04M020_SCR_Main", "box_VisibilityController_v2_50.Hidden", "box_VisibilityController_v2_74.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_72_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014879"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1700035240"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_65_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|747116515", "747116515", "S04M020_SCR_Main", "box_VisibilityController_v2_72.Shown", "box_VisibilityController_v2_65.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_105_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014897"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1790282122"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_100_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1690601027", "1690601027", "S04M020_SCR_Main", "box_VisibilityController_v2_105.Shown", "box_VisibilityController_v2_100.Show", clone, l0)
  l0:Show()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_CinematicPrep_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2102231423", "2102231423", "S04M020_SCR_Main", "box_PlaySequence_v5_1.Finished", "box_CinematicPrep_3.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CollisionController_21_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014885"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1467585105"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_23_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1779398386", "1779398386", "S04M020_SCR_Main", "box_CollisionController_21.CollisionsDisabled", "box_CollisionController_23.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_76_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016162"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1346781111"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_77_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|892375440", "892375440", "S04M020_SCR_Main", "box_VisibilityController_v2_76.Hidden", "box_VisibilityController_v2_77.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_60_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014875"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|415723490"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_67_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|772572751", "772572751", "S04M020_SCR_Main", "box_VisibilityController_v2_60.Shown", "box_VisibilityController_v2_67.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_45_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014885"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1333806188"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_46_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|461946080", "461946080", "S04M020_SCR_Main", "box_VisibilityController_v2_45.Hidden", "box_VisibilityController_v2_46.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_10_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070267815453"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1493301333"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_11_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|200247632", "200247632", "S04M020_SCR_Main", "box_CollisionController_10.CollisionsDisabled", "box_CollisionController_11.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CollisionController_7_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014872"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1795910045"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_8_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|566859642", "566859642", "S04M020_SCR_Main", "box_CollisionController_7.CollisionsDisabled", "box_CollisionController_8.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_40_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014880"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1696722765"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_41_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1198344859", "1198344859", "S04M020_SCR_Main", "box_VisibilityController_v2_40.Hidden", "box_VisibilityController_v2_41.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_5_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014868"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|289065542"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_6_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|687405503", "687405503", "S04M020_SCR_Main", "box_CollisionController_5.CollisionsDisabled", "box_CollisionController_6.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_99_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016157"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1783431141"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_106_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1967147414", "1967147414", "S04M020_SCR_Main", "box_VisibilityController_v2_99.Shown", "box_VisibilityController_v2_106.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_59_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014883"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1313642392"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_73_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|448239076", "448239076", "S04M020_SCR_Main", "box_VisibilityController_v2_59.Shown", "box_VisibilityController_v2_73.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_41_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014881"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1474647126"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_42_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|651552028", "651552028", "S04M020_SCR_Main", "box_VisibilityController_v2_41.Hidden", "box_VisibilityController_v2_42.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_65_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070625029676"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1947822305"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_71_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1236123629", "1236123629", "S04M020_SCR_Main", "box_VisibilityController_v2_65.Shown", "box_VisibilityController_v2_71.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_37_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014878"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|414436854"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_38_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|470106065", "470106065", "S04M020_SCR_Main", "box_VisibilityController_v2_37.Hidden", "box_VisibilityController_v2_38.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_70_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016155"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1076846178"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_103_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2123147940", "2123147940", "S04M020_SCR_Main", "box_VisibilityController_v2_70.Shown", "box_VisibilityController_v2_103.Show", clone, l0)
  l0:Show()
end
function export:f_box_CollisionController_97_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1771519585", "1771519585", "S04M020_SCR_Main", "box_CollisionController_97.CollisionsDisabled", "OutDisableCollision", clone, self)
  self:OutDisableCollision()
end
function export:f_box_VisibilityController_v2_106_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016162"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1523582078"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_105_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|684223067", "684223067", "S04M020_SCR_Main", "box_VisibilityController_v2_106.Shown", "box_VisibilityController_v2_105.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_54_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014894"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1291856170"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_57_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|227361900", "227361900", "S04M020_SCR_Main", "box_VisibilityController_v2_54.Shown", "box_VisibilityController_v2_57.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_52_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014874"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|465098576"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_64_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1875365852", "1875365852", "S04M020_SCR_Main", "box_VisibilityController_v2_52.Shown", "box_VisibilityController_v2_64.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_100_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016164"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|58394467"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_102_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1221808459", "1221808459", "S04M020_SCR_Main", "box_VisibilityController_v2_100.Shown", "box_VisibilityController_v2_102.Show", clone, l0)
  l0:Show()
end
function export:f_box_CollisionController_8_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070267815445"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1112442769"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_9_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2140244979", "2140244979", "S04M020_SCR_Main", "box_CollisionController_8.CollisionsDisabled", "box_CollisionController_9.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CollisionController_94_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906016156"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1122085607"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_92_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1927300613", "1927300613", "S04M020_SCR_Main", "box_CollisionController_94.CollisionsDisabled", "box_CollisionController_92.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_74_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016156"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|859279718"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_75_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|488459522", "488459522", "S04M020_SCR_Main", "box_VisibilityController_v2_74.Hidden", "box_VisibilityController_v2_75.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Cinema_Zone_Cleanup_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372049688306557"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M020_SCR_MissionStart/s04_m020_scr_missionstart.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|426328469", "426328469", "S04M020_SCR_Main", "box_Cinema_Zone_Cleanup_33.Out", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_101_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016171"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1014381432"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_104_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1678268404", "1678268404", "S04M020_SCR_Main", "box_VisibilityController_v2_101.Shown", "box_VisibilityController_v2_104.Show", clone, l0)
  l0:Show()
end
function export:f_box_CollisionController_26_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014895"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1169392857"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_27_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1911475081", "1911475081", "S04M020_SCR_Main", "box_CollisionController_26.CollisionsDisabled", "box_CollisionController_27.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_68_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014870"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|685725495"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_55_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1619301274", "1619301274", "S04M020_SCR_Main", "box_VisibilityController_v2_68.Shown", "box_VisibilityController_v2_55.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_62_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014877"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|925119544"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_56_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|321927798", "321927798", "S04M020_SCR_Main", "box_VisibilityController_v2_62.Shown", "box_VisibilityController_v2_56.Show", clone, l0)
  l0:Show()
end
function export:f_box_CollisionController_17_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014881"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2005207378"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_20_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1713730746", "1713730746", "S04M020_SCR_Main", "box_CollisionController_17.CollisionsDisabled", "box_CollisionController_20.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_83_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016171"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|104703476"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_84_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1294174852", "1294174852", "S04M020_SCR_Main", "box_VisibilityController_v2_83.Hidden", "box_VisibilityController_v2_84.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_25_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014894"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1900086593"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_26_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|31330382", "31330382", "S04M020_SCR_Main", "box_CollisionController_25.CollisionsDisabled", "box_CollisionController_26.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_71_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014880"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|333733906"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_53_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|565877441", "565877441", "S04M020_SCR_Main", "box_VisibilityController_v2_71.Shown", "box_VisibilityController_v2_53.Show", clone, l0)
  l0:Show()
end
function export:f_box_CollisionController_90_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906016162"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|984421717"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_96_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2093931624", "2093931624", "S04M020_SCR_Main", "box_CollisionController_90.CollisionsDisabled", "box_CollisionController_96.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_107_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016168"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1985281179"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_109_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|400585747", "400585747", "S04M020_SCR_Main", "box_VisibilityController_v2_107.Shown", "box_VisibilityController_v2_109.Show", clone, l0)
  l0:Show()
end
function export:f_box_CollisionController_19_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014883"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|111688216"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_22_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1270176726", "1270176726", "S04M020_SCR_Main", "box_CollisionController_19.CollisionsDisabled", "box_CollisionController_22.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_109_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016170"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1898224169"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_101_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1001989536", "1001989536", "S04M020_SCR_Main", "box_VisibilityController_v2_109.Shown", "box_VisibilityController_v2_101.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_58_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014882"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1683489961"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_59_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|114174235", "114174235", "S04M020_SCR_Main", "box_VisibilityController_v2_58.Shown", "box_VisibilityController_v2_59.Show", clone, l0)
  l0:Show()
end
function export:f_box_CollisionController_20_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014882"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1979618113"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_19_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1783581823", "1783581823", "S04M020_SCR_Main", "box_CollisionController_20.CollisionsDisabled", "box_CollisionController_19.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_CollisionController_18_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014880"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1932831006"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_17_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1517301128", "1517301128", "S04M020_SCR_Main", "box_CollisionController_18.CollisionsDisabled", "box_CollisionController_17.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_43_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906014883"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|983152861"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_44_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1075682492", "1075682492", "S04M020_SCR_Main", "box_VisibilityController_v2_43.Hidden", "box_VisibilityController_v2_44.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CinematicPrep_3_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|2141651837", "2141651837", "S04M020_SCR_Main", "box_CinematicPrep_3.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_CollisionController_15_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906014879"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1474367529"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_16_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|658774508", "658774508", "S04M020_SCR_Main", "box_CollisionController_15.CollisionsDisabled", "box_CollisionController_16.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_VisibilityController_v2_82_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372070906016170"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1935620409"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_83_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1994851703", "1994851703", "S04M020_SCR_Main", "box_VisibilityController_v2_82.Hidden", "box_VisibilityController_v2_83.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CollisionController_91_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372070906016171"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|1184567245"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_93_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04m020_scr.domino|@S04M020_SCR_Main|814839321", "814839321", "S04M020_SCR_Main", "box_CollisionController_91.CollisionsDisabled", "box_CollisionController_93.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:Out()
end
function export:OutHideInsideTruck()
end
function export:OutShowInsideTruck()
end
function export:OutDisableCollision()
end
_compilerVersion = 4
