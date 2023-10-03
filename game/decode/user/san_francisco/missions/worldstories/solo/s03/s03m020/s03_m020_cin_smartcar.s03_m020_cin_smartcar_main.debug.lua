export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/System/GateController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S03_M020_CIN_SmartCar_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.CHIP = nil
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|74407798"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_3 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_3
  l0._graph = self
  l0._name = "box_Timer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|814460607"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_6 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_6
  l0._graph = self
  l0._name = "box_OnceOnly_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|868668486"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_6_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_7 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_7
  l0._graph = self
  l0._name = "box_PlaySequence_v5_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|1367000883"
  l0.Started = self.f_box_PlaySequence_v5_7_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_7_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_7_Finished
  self.box_CLOController_1 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_1
  l0._graph = self
  l0._name = "box_CLOController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|1828795600"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_1_OnUserInPlace
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
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372067236849306"
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
  l0._name = "box_Cinema_Zone_Cleanup_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|1822312305"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|424874777", "424874777", "S03_M020_CIN_SmartCar_Main", "In", "box_Cinema_Zone_Cleanup_2.CleanZone", self, l0)
  l0:CleanZone()
end
function export:f_box_GateController_8_Closed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372050108852870"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0._name = "box_GateController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|1250640020"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|1447349299", "1447349299", "S03_M020_CIN_SmartCar_Main", "box_GateController_8.Closed", "box_GateController_9.Close", clone, l0)
  l0:Close()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372064823612182"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = 0
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|2071174461"
  l0.Out = self.f_box_Lanes_Restrictions_Control_10_Out
  l0 = self.box_OnceOnly_v3_4
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|2014179734", "2014179734", "S03_M020_CIN_SmartCar_Main", "box_OnceOnly_v3_4.Out", "box_Lanes_Restrictions_Control_10.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_3_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372050108852804"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0._name = "box_GateController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|12240017"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_GateController_8_Closed
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0 = self.box_Timer_v2_3
  l1 = Boxes[PathID("domino/System/GateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|92737474", "92737474", "S03_M020_CIN_SmartCar_Main", "box_Timer_v2_3.TimeElapsed", "box_GateController_8.Close", l0, l1)
  l1:Close()
end
function export:f_box_OnceOnly_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.CHIP
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|2125695004"
  l0._DynamicAnchors = {HackCategoryType = 2}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_box_DPad_Hackable_Controller_11_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0 = self.box_OnceOnly_v3_6
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|763712141", "763712141", "S03_M020_CIN_SmartCar_Main", "box_OnceOnly_v3_6.Out", "box_DPad_Hackable_Controller_11.RemoveAll", l0, l1)
  l1:RemoveAll()
end
function export:f_box_PlaySequence_v5_7_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_7
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|1202220418", "1202220418", "S03_M020_CIN_SmartCar_Main", "box_PlaySequence_v5_7.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_7_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_7
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|1733602887", "1733602887", "S03_M020_CIN_SmartCar_Main", "box_PlaySequence_v5_7.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_7_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_3
  l0.Seconds = 2
  l0 = self.box_PlaySequence_v5_7
  l1 = self.box_Timer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|587550751", "587550751", "S03_M020_CIN_SmartCar_Main", "box_PlaySequence_v5_7.Started", "box_Timer_v2_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_Cinema_Zone_Cleanup_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_7
  l0.SceneEntity = "9223372047235756300"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_SmartCar_CIN/s03_smartcar_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|1910261422", "1910261422", "S03_M020_CIN_SmartCar_Main", "box_Cinema_Zone_Cleanup_2.Out", "box_PlaySequence_v5_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_1_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_1
  self.CHIP = l0.UserID
  self:OnEnter_box_Vehicle_Controller_5()
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|1572619659", "1572619659", "S03_M020_CIN_SmartCar_Main", "box_CLOController_1.OnUserInPlace", "box_Vehicle_Controller_5.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_Lanes_Restrictions_Control_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_1
  l0.CLO = "9223372055593937501"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|522520645", "522520645", "S03_M020_CIN_SmartCar_Main", "box_Lanes_Restrictions_Control_10.Out", "box_CLOController_1.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Vehicle_Controller_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|747971658", "747971658", "S03_M020_CIN_SmartCar_Main", "box_Vehicle_Controller_5.Out", "box_OnceOnly_v3_6.In", clone, l0)
  l0:In(0)
end
function export:f_box_Vehicle_Controller_5_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Controller_5()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|319384560", "319384560", "S03_M020_CIN_SmartCar_Main", "box_Vehicle_Controller_5.Unusable", "box_Vehicle_Controller_5.DisableForPlayer", clone, l0)
  l0:DisableForPlayer()
end
function export:f_box_DPad_Hackable_Controller_11_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|1896668642", "1896668642", "S03_M020_CIN_SmartCar_Main", "box_DPad_Hackable_Controller_11.RemovedAll", "Out", clone, self)
  self:Out()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:OnEnter_box_Vehicle_Controller_5()
  local l0
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.CHIP
  l0._graph = self
  l0._name = "box_Vehicle_Controller_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_SmartCar.domino|@S03_M020_CIN_SmartCar_Main|2072107185"
  l0.Out = self.f_box_Vehicle_Controller_5_Out
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Vehicle_Controller_5_Unusable
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
end
function export:Out()
end
_compilerVersion = 4
