export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
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
  self.cin_out = DummyFunction
  self.PlayerEntity = nil
  self.Han = nil
  self[1] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[8] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_8_Out
  l0.ResetOut = DummyFunction
  self[7] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[12] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[12]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_12_OnUserInPlace
  self[11] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {"Han"}
  }
  l0.Started = self.f_11_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[2]
  l0._graph = self
  l0.PreOut = self.f_2_PreOut
  l0.PostOut = DummyFunction
  self[6] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_6_Skipped
  l0.Finished = self.f_6_Finished
  self[3] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[3]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_3_PostOut
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
  l0 = self[2]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_13_Hidden()
  local l0
  self = self._graph
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
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_5_Out
  l0:CleanZone()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Start()
end
function export:f_1_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Han
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0.HackCategoryType[2] = nil
  l0.HackCategoryType[3] = nil
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_4_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0:RemoveAll()
end
function export:f_4_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372049914361175"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_14_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_9_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372060745416234"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_15_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_19_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372049914361175"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_13_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060745416234"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_9_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_16_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372069614417474"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = self.f_17_CollisionsEnabled
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  l0:EnableCollisions()
end
function export:f_17_CollisionsEnabled()
  local l0
  self = self._graph
  l0 = self[12]
  l0.CLO = "9223372056455554410"
  l0:Activate()
end
function export:f_7_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SceneEntity = "9223372047683038349"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_CargoContainer_CIN/s16_cargocontainer_cin.seq"
  l0:Start()
end
function export:f_15_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069614417474"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_16_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_12_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[12]
  self.Han = l0.UserID
  l0 = self[11]
  l0.SceneEntity = "9223372061113495780"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_SCR_HanGround/s16_scr_hanground.seq"
  l0.EntityIn.Han = self.Han
  l0:Start()
end
function export:f_11_Started()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Start()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069614417474"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_18_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_2_PreOut()
  local l0
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
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_14_Shown()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_6_Finished()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(1)
end
function export:f_6_Skipped()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(0)
end
function export:f_3_PostOut()
  self = self._graph
  self:cin_out()
end
function export:f_18_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372069614417474"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_19_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:cin_out()
end
_compilerVersion = 4
