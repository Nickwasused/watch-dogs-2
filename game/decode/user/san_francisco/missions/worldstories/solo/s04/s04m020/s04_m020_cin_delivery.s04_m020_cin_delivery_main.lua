export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Wrench = nil
  self.Truck = nil
  self.InteriorTruck = {}
  self[6] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.OutHideInsideTruck = self.f_6_OutHideInsideTruck
  l0.OutShowInsideTruck = DummyFunction
  l0.OutDisableCollision = DummyFunction
  self[8] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_8_Out
  l0.ResetOut = DummyFunction
  self[3] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.OutHideInsideTruck = DummyFunction
  l0.OutShowInsideTruck = self.f_3_OutShowInsideTruck
  l0.OutDisableCollision = DummyFunction
  self[5] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_5_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[17] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_17_OnUserInPlace
  self[10] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[4] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[4]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_4_PostOut
  self[2] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_2_Skipped
  l0.Finished = self.f_2_Finished
  self[15] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = DummyFunction
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
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053471671990"
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
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.User = self.WrenchIn
  l0:UnspawnUser()
end
function export:f_6_OutHideInsideTruck()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Seconds = 2
  l0:Start()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053471671990"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = 1
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
  l0.Out = self.f_11_Out
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.SpawnPoint = "9223372061972999715"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_3_OutShowInsideTruck()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372061675006073"
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
  l0.NotRemovableEntity[2] = nil
  l0.NotRemovableEntity[3] = nil
  l0.NotRemovableEntity[4] = nil
  l0.NotRemovableEntity[5] = nil
  l0.NotRemovableEntity[6] = nil
  l0.NotRemovableEntity[7] = nil
  l0.NotRemovableEntity[8] = nil
  l0.NotRemovableEntity[9] = nil
  l0.NotRemovableEntity[10] = nil
  l0.NotRemovableEntity[11] = nil
  l0.NotRemovableEntity[12] = nil
  l0.NotRemovableEntity[13] = nil
  l0.NotRemovableEntity[14] = nil
  l0.NotRemovableEntity[15] = nil
  l0.NotRemovableEntity[16] = nil
  l0.NotRemovableEntity[17] = nil
  l0.NotRemovableEntity[18] = nil
  l0.NotRemovableEntity[19] = nil
  l0.NotRemovableEntity[20] = nil
  l0.NotRemovableEntity[21] = nil
  l0.NotRemovableEntity[22] = nil
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 23}
  l0.Out = self.f_14_Out
  l0:CleanZone()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0:InShowInsideTruck()
end
function export:f_5_UnspawnedUser()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372057176310738"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_12_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_17_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[17]
  self.Truck = l0.UserID
  l0 = self[6]
  l0:InHideInsideTruck()
end
function export:f_10_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_4_PostOut()
  self = self._graph
  self:Out()
end
function export:f_2_Finished()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(1)
end
function export:f_2_Skipped()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(0)
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.CLO = "9223372061972999525"
  l0:Activate()
end
function export:f_12_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372063966591377"
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
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_18_Out
  l0:CleanZone()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SceneEntity = "9223372046601120180"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_Delivery_CIN/s04_delivery_cin.seq"
  l0:Start()
end
function export:Out()
end
_compilerVersion = 4
