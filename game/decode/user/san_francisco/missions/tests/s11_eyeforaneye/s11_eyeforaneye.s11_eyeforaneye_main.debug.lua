export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Client_PickUp.debug.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/HackableMonitor.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Player_VehicleMonitor.debug.lua")
  cbox:RegisterBox("Domino/Library/singleplayer/taxi/Taxi_Missions.ReachDestination.debug.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S11_EyeForAnEye_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main"
  self.PlayerEntity = nil
  self.PlayerVehicle = nil
  self.Miranda = nil
  self.box_SnapAndBind_9 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_9
  l0._graph = self
  l0._name = "box_SnapAndBind_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|153104302"
  l0.Attached = self.f_box_SnapAndBind_9_Attached
  self.box_MissionLayer_v2_2 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|258702220"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_Hackable_Monitor_5 = cbox:CreateBox("Domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_5
  l0._graph = self
  l0._name = "box_Hackable_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|360588291"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_5_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_5_HackSuccess
  l0.HackFailed = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Client_PickUp_10 = cbox:CreateBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Client_PickUp.debug.lua")
  l0 = self.box_Client_PickUp_10
  l0._graph = self
  l0._name = "box_Client_PickUp_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|477750043"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Client_PickUp_10_Disabled
  l0.Spawned = DummyFunction
  l0.PickedUp = self.f_box_Client_PickUp_10_PickedUp
  l0.FailedMoveAndAssign = DummyFunction
  self.box_SnapAndBind_4 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_4
  l0._graph = self
  l0._name = "box_SnapAndBind_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|810502628"
  l0.Attached = self.f_box_SnapAndBind_4_Attached
  self.box_ReachDestination_12 = cbox:CreateBox("Domino/Library/singleplayer/taxi/Taxi_Missions.ReachDestination.debug.lua")
  l0 = self.box_ReachDestination_12
  l0._graph = self
  l0._name = "box_ReachDestination_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|826249155"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.DestinationReached = self.f_box_ReachDestination_12_DestinationReached
  self.box_CLOController_7 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_7
  l0._graph = self
  l0._name = "box_CLOController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|991782529"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_7_OnUserInPlace
  self.box_MapPointController_v3_6 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_6
  l0._graph = self
  l0._name = "box_MapPointController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1435802709"
  l0.Shown = self.f_box_MapPointController_v3_6_Shown
  l0.Hidden = self.f_box_MapPointController_v3_6_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_VehicleMonitor_v2_8 = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_8
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1781673296"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v2_8_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v2_8_Entered
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.StateChange = DummyFunction
  l0.BailedOut = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.TakenDamage = DummyFunction
  self.box_Player_VehicleMonitor_13 = cbox:CreateBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Player_VehicleMonitor.debug.lua")
  l0 = self.box_Player_VehicleMonitor_13
  l0._graph = self
  l0._name = "box_Player_VehicleMonitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1782254936"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_Player_VehicleMonitor_13_Enabled
  l0.Disabled = DummyFunction
  l0.Entered = self.f_box_Player_VehicleMonitor_13_Entered
  l0.Exited = self.f_box_Player_VehicleMonitor_13_Exited
  l0.VehicleWrecked = DummyFunction
  l0.PlayerAbandonedVehicle = DummyFunction
  self.box_MapPointController_v3_3 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_3
  l0._graph = self
  l0._name = "box_MapPointController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|2121523444"
  l0.Shown = self.f_box_MapPointController_v3_3_Shown
  l0.Hidden = self.f_box_MapPointController_v3_3_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S11_EyeForAnEye_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1626943177", "1626943177", "S11_EyeForAnEye_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_SnapAndBind_9_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_6()
  l0 = self.box_SnapAndBind_9
  l1 = self.box_MapPointController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1536212846", "1536212846", "S11_EyeForAnEye_Main", "box_SnapAndBind_9.Attached", "box_MapPointController_v3_6.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|794668992", "794668992", "S11_EyeForAnEye_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReachDestination_12()
  l0 = self.box_MultipleOR_11
  l1 = self.box_ReachDestination_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|473524980", "473524980", "S11_EyeForAnEye_Main", "box_MultipleOR_11.Out", "box_ReachDestination_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_5_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_9
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372046513839865"
  l0 = self.box_Hackable_Monitor_5
  l1 = self.box_SnapAndBind_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|431281641", "431281641", "S11_EyeForAnEye_Main", "box_Hackable_Monitor_5.Disabled", "box_SnapAndBind_9.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_Hackable_Monitor_5_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_3()
  l0 = self.box_Hackable_Monitor_5
  l1 = self.box_MapPointController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1039725080", "1039725080", "S11_EyeForAnEye_Main", "box_Hackable_Monitor_5.HackSuccess", "box_MapPointController_v3_3.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Client_PickUp_10_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_VehicleMonitor_13()
  l0 = self.box_Client_PickUp_10
  l1 = self.box_Player_VehicleMonitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|176386973", "176386973", "S11_EyeForAnEye_Main", "box_Client_PickUp_10.Disabled", "box_Player_VehicleMonitor_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Client_PickUp_10_PickedUp()
  local l0
  self = self._graph
  self:OnEnter_box_Client_PickUp_10()
  l0 = self.box_Client_PickUp_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|457907787", "457907787", "S11_EyeForAnEye_Main", "box_Client_PickUp_10.PickedUp", "box_Client_PickUp_10.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_SnapAndBind_4_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_3()
  l0 = self.box_SnapAndBind_4
  l1 = self.box_MapPointController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1199617721", "1199617721", "S11_EyeForAnEye_Main", "box_SnapAndBind_4.Attached", "box_MapPointController_v3_3.Show", l0, l1)
  l1:Show()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_7
  l0.CLO = "9223372046273698277"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1423003926", "1423003926", "S11_EyeForAnEye_Main", "box_Get_Player_ID_1.Out", "box_CLOController_7.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_ReachDestination_12_DestinationReached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_VehicleMonitor_13()
  l0 = self.box_ReachDestination_12
  l1 = self.box_Player_VehicleMonitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1743554339", "1743554339", "S11_EyeForAnEye_Main", "box_ReachDestination_12.DestinationReached", "box_Player_VehicleMonitor_13.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CLOController_7_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_7
  self.PlayerVehicle = l0.UserID
  l0 = self.box_SnapAndBind_4
  l0.Parent = "9223372044771937650"
  l0.Child = "9223372046513838995"
  l0 = self.box_CLOController_7
  l1 = self.box_SnapAndBind_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|625519411", "625519411", "S11_EyeForAnEye_Main", "box_CLOController_7.OnUserInPlace", "box_SnapAndBind_4.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_MapPointController_v3_6_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_8()
  l0 = self.box_MapPointController_v3_6
  l1 = self.box_VehicleMonitor_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|487474579", "487474579", "S11_EyeForAnEye_Main", "box_MapPointController_v3_6.Hidden", "box_VehicleMonitor_v2_8.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v3_6_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_8()
  l0 = self.box_MapPointController_v3_6
  l1 = self.box_VehicleMonitor_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1352301142", "1352301142", "S11_EyeForAnEye_Main", "box_MapPointController_v3_6.Shown", "box_VehicleMonitor_v2_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v2_8_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Client_PickUp_10()
  l0 = self.box_VehicleMonitor_v2_8
  l1 = self.box_Client_PickUp_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|988547053", "988547053", "S11_EyeForAnEye_Main", "box_VehicleMonitor_v2_8.Disabled", "box_Client_PickUp_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v2_8_Entered()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_6()
  l0 = self.box_VehicleMonitor_v2_8
  l1 = self.box_MapPointController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1832100817", "1832100817", "S11_EyeForAnEye_Main", "box_VehicleMonitor_v2_8.Entered", "box_MapPointController_v3_6.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Player_VehicleMonitor_13_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_Player_VehicleMonitor_13
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1029230148", "1029230148", "S11_EyeForAnEye_Main", "box_Player_VehicleMonitor_13.Enabled", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Player_VehicleMonitor_13_Entered()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_Player_VehicleMonitor_13
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1703545969", "1703545969", "S11_EyeForAnEye_Main", "box_Player_VehicleMonitor_13.Entered", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Player_VehicleMonitor_13_Exited()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReachDestination_12()
  l0 = self.box_Player_VehicleMonitor_13
  l1 = self.box_ReachDestination_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|1795574639", "1795574639", "S11_EyeForAnEye_Main", "box_Player_VehicleMonitor_13.Exited", "box_ReachDestination_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v3_3_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_5()
  l0 = self.box_MapPointController_v3_3
  l1 = self.box_Hackable_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|39379800", "39379800", "S11_EyeForAnEye_Main", "box_MapPointController_v3_3.Hidden", "box_Hackable_Monitor_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v3_3_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_5()
  l0 = self.box_MapPointController_v3_3
  l1 = self.box_Hackable_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S11_EyeForAnEye\\S11_EyeForAnEye.domino|@S11_EyeForAnEye_Main|218219384", "218219384", "S11_EyeForAnEye_Main", "box_MapPointController_v3_3.Shown", "box_Hackable_Monitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_Hackable_Monitor_5()
  local l0
  l0 = self.box_Hackable_Monitor_5
  l0.HackableEntity = "9223372044771937650"
end
function export:OnEnter_box_Client_PickUp_10()
  local l0
  l0 = self.box_Client_PickUp_10
  l0.Mission = "MissionList.9223372045907020532"
  l0.ClientCLO = "9223372046513839687"
  l0.ClientEntity = self.Miranda
  l0.IconPickUp = "9223372046513839689"
  l0.Range = 5
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ShowGPS = 0
  l0.VehiclePlayer = self.PlayerVehicle
  l0.Seat = "RearPassengerRight"
end
function export:OnEnter_box_ReachDestination_12()
  local l0
  l0 = self.box_ReachDestination_12
  l0.Mission = "MissionList.9223372045907020532"
  l0.Destination = "9223372046513840567"
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "ReachSingleDestination",
    id = "20000191"
  }
  l0.LocText = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "MarkerDestination",
    id = "335055"
  }
  l0.VehiclePlayer = self.PlayerVehicle
  l0.ReachDistance = 5
  l0.ShowGPS = 0
  l0.AutoStop = 1
end
function export:OnEnter_box_MapPointController_v3_6()
  local l0
  l0 = self.box_MapPointController_v3_6
  l0.MapPoint = "9223372046513839865"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
function export:OnEnter_box_VehicleMonitor_v2_8()
  local l0
  l0 = self.box_VehicleMonitor_v2_8
  l0.Vehicle = self.PlayerVehicle
end
function export:OnEnter_box_Player_VehicleMonitor_13()
  local l0
  l0 = self.box_Player_VehicleMonitor_13
  l0.Mission = "MissionList.9223372045907020532"
  l0.VehiclePlayer = self.PlayerVehicle
  l0.IconVehicle = "9223372046513839865"
  l0.TimeToReturnToVehicle = 20
  l0.CheckNow = 0
end
function export:OnEnter_box_MapPointController_v3_3()
  local l0
  l0 = self.box_MapPointController_v3_3
  l0.MapPoint = "9223372046513838995"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
end
_compilerVersion = 4
