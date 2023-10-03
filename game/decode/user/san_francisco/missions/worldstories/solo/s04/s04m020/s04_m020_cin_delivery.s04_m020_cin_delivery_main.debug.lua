export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S04_M020_CIN_Delivery_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Wrench = nil
  self.Truck = nil
  self.InteriorTruck = {}
  self.box_S04M020_SCR_Main_6 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.debug.lua")
  l0 = self.box_S04M020_SCR_Main_6
  l0._graph = self
  l0._name = "box_S04M020_SCR_Main_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|306124172"
  l0.Out = DummyFunction
  l0.OutHideInsideTruck = self.f_box_S04M020_SCR_Main_6_OutHideInsideTruck
  l0.OutShowInsideTruck = DummyFunction
  l0.OutDisableCollision = DummyFunction
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|444806170"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
  self.box_S04M020_SCR_Main_3 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.debug.lua")
  l0 = self.box_S04M020_SCR_Main_3
  l0._graph = self
  l0._name = "box_S04M020_SCR_Main_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|743275683"
  l0.Out = DummyFunction
  l0.OutHideInsideTruck = DummyFunction
  l0.OutShowInsideTruck = self.f_box_S04M020_SCR_Main_3_OutShowInsideTruck
  l0.OutDisableCollision = DummyFunction
  self.box_CLOController_5 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1000135869"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_5_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_17 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_17
  l0._graph = self
  l0._name = "box_CLOController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1157141829"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_17_OnUserInPlace
  self.box_Timer_v2_10 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_10
  l0._graph = self
  l0._name = "box_Timer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1375736191"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1614780969"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_4_PostOut
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1666343346"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_2_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
  self.box_Teleport_To_SpawnPoint_15 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_15
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1982296825"
  l0.Out = self.f_box_Teleport_To_SpawnPoint_15_Out
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
  l0._name = "box_Lanes_Restrictions_Control_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|912831028"
  l0.Out = self.f_box_Lanes_Restrictions_Control_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|163363502", "163363502", "S04_M020_CIN_Delivery_Main", "In", "box_Lanes_Restrictions_Control_1.In", self, l0)
  l0:In()
end
function export:f_box_Cinema_Zone_Cleanup_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_5
  l0.User = self.WrenchIn
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|32167078", "32167078", "S04_M020_CIN_Delivery_Main", "box_Cinema_Zone_Cleanup_14.Out", "box_CLOController_5.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_S04M020_SCR_Main_6_OutHideInsideTruck()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l0.Seconds = 2
  l0 = self.box_S04M020_SCR_Main_6
  l1 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1710535050", "1710535050", "S04_M020_CIN_Delivery_Main", "box_S04M020_SCR_Main_6.OutHideInsideTruck", "box_Timer_v2_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0, l1
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
  l0._name = "box_Lanes_Restrictions_Control_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|576243001"
  l0.Out = self.f_box_Lanes_Restrictions_Control_11_Out
  l0 = self.box_OnceOnly_v3_8
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|881163152", "881163152", "S04_M020_CIN_Delivery_Main", "box_OnceOnly_v3_8.Out", "box_Lanes_Restrictions_Control_11.In", l0, l1)
  l1:In()
end
function export:f_box_Lanes_Restrictions_Control_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_To_SpawnPoint_15
  l0.SpawnPoint = "9223372061972999715"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|741071971", "741071971", "S04_M020_CIN_Delivery_Main", "box_Lanes_Restrictions_Control_11.Out", "box_Teleport_To_SpawnPoint_15.In", clone, l0)
  l0:In()
end
function export:f_box_S04M020_SCR_Main_3_OutShowInsideTruck()
  local l0, l1
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
  l0._name = "box_Cinema_Zone_Cleanup_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|89952795"
  l0._DynamicAnchors = {NotRemovableEntity = 23}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_14_Out
  l0 = self.box_S04M020_SCR_Main_3
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|8175900", "8175900", "S04_M020_CIN_Delivery_Main", "box_S04M020_SCR_Main_3.OutShowInsideTruck", "box_Cinema_Zone_Cleanup_14.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_Lanes_Restrictions_Control_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S04M020_SCR_Main_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1855411939", "1855411939", "S04_M020_CIN_Delivery_Main", "box_Lanes_Restrictions_Control_1.Out", "box_S04M020_SCR_Main_3.InShowInsideTruck", clone, l0)
  l0:InShowInsideTruck()
end
function export:f_box_CLOController_5_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372057176310738"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|2076135056"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_12_Hidden
  l0.Out = DummyFunction
  l0 = self.box_CLOController_5
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1652887865", "1652887865", "S04_M020_CIN_Delivery_Main", "box_CLOController_5.UnspawnedUser", "box_VisibilityController_v2_12.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_CLOController_17_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_17
  self.Truck = l0.UserID
  l1 = self.box_S04M020_SCR_Main_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|897311844", "897311844", "S04_M020_CIN_Delivery_Main", "box_CLOController_17.OnUserInPlace", "box_S04M020_SCR_Main_6.InHideInsideTruck", l0, l1)
  l1:InHideInsideTruck()
end
function export:f_box_Timer_v2_10_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_10
  l1 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1620960771", "1620960771", "S04_M020_CIN_Delivery_Main", "box_Timer_v2_10.TimeElapsed", "box_CinematicPrep_4.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CinematicPrep_4_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|122410683", "122410683", "S04_M020_CIN_Delivery_Main", "box_CinematicPrep_4.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1249730510", "1249730510", "S04_M020_CIN_Delivery_Main", "box_PlaySequence_v5_2.Finished", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_2_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1428724335", "1428724335", "S04_M020_CIN_Delivery_Main", "box_PlaySequence_v5_2.Skipped", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_Teleport_To_SpawnPoint_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_17
  l0.CLO = "9223372061972999525"
  l0 = self.box_Teleport_To_SpawnPoint_15
  l1 = self.box_CLOController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1137945441", "1137945441", "S04_M020_CIN_Delivery_Main", "box_Teleport_To_SpawnPoint_15.Out", "box_CLOController_17.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_VisibilityController_v2_12_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Cinema_Zone_Cleanup_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|2088117228"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|624003382", "624003382", "S04_M020_CIN_Delivery_Main", "box_VisibilityController_v2_12.Hidden", "box_Cinema_Zone_Cleanup_18.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Cinema_Zone_Cleanup_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372046601120180"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_Delivery_CIN/s04_delivery_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\s04_m020_cin_delivery.domino|@S04_M020_CIN_Delivery_Main|1113010496", "1113010496", "S04_M020_CIN_Delivery_Main", "box_Cinema_Zone_Cleanup_18.Out", "box_PlaySequence_v5_2.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:Out()
end
_compilerVersion = 4
