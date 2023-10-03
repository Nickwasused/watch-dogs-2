export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GPS3DController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TaxiController_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TutorialController.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "PickUp_CarAndClient"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient"
  self.Disabled = DummyFunction
  self.Enabled = DummyFunction
  self.Spawned = DummyFunction
  self.FailedMoveAndAssign = DummyFunction
  self.PickedUp = DummyFunction
  self.PlayerEntity = nil
  self.tmpClient = nil
  self.tmp_ClientsList_IDs = {}
  self.CurrentClient = nil
  self.RemainingClients = 0
  self.CurrentCLO = nil
  self.playerVehicle = nil
  self.isCorrectVehicle = 0
  self.PlayerInVehicle = 0
  self.SeatEntryPosX = 0
  self.SeatEntryPosY = 0
  self.SeatEntryPosZ = 0
  self.ClientSeat = "FrontPassenger"
  self.AssignRetries = 3
  self.box_Timer_v2_86 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_86
  l0._graph = self
  l0._name = "box_Timer_v2_86"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|703654"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_86_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MapPointController_v3_34 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_34
  l0._graph = self
  l0._name = "box_MapPointController_v3_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|62562617"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_34_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_125 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_125
  l0._graph = self
  l0._name = "box_MultipleOR_125"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|243110430"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_125_Out
  self.box_SetBoolean_v2_100 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_100
  l0._graph = self
  l0._name = "box_SetBoolean_v2_100"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|329018787"
  l0.Out = self.f_box_SetBoolean_v2_100_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_100_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_100_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_100_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_100_SetFromBool
  self.box_Timer_v2_44 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_44
  l0._graph = self
  l0._name = "box_Timer_v2_44"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|409699332"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_104
  l0._graph = self
  l0._name = "box_MultipleOR_104"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|424315301"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_104_Out
  self.box_MultipleOR_101 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_101
  l0._graph = self
  l0._name = "box_MultipleOR_101"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|630357798"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_101_Out
  self.box_MapPointController_v3_3 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_3
  l0._graph = self
  l0._name = "box_MapPointController_v3_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|788543990"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_3_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_84
  l0._graph = self
  l0._name = "box_MultipleOR_84"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|831810677"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_84_Out
  self.box_LogicGate_v2_75 = cbox:CreateBox("Domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_75
  l0._graph = self
  l0._name = "box_LogicGate_v2_75"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|876682131"
  l0.Out = self.f_box_LogicGate_v2_75_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_75_Closed
  self.box_SetBoolean_v2_55 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_55
  l0._graph = self
  l0._name = "box_SetBoolean_v2_55"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|913689078"
  l0.Out = self.f_box_SetBoolean_v2_55_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_55_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_55_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_55_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_55_SetFromBool
  self.box_TutorialController_54 = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_54
  l0._graph = self
  l0._name = "box_TutorialController_54"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|917495191"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_TaxiController_v2_123 = cbox:CreateBox("Domino/System/TaxiController_v2.lua")
  l0 = self.box_TaxiController_v2_123
  l0._graph = self
  l0._name = "box_TaxiController_v2_123"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|922307593"
  l0.Out = DummyFunction
  l0.TaxiCarValid = DummyFunction
  l0.TaxiCarInvalid = DummyFunction
  l0.OnClientPickedUp = self.f_box_TaxiController_v2_123_OnClientPickedUp
  l0.OnClientDroppedOff = DummyFunction
  l0.OnClientSpawned = self.f_box_TaxiController_v2_123_OnClientSpawned
  self.box_Proximity_Monitor_49 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_49
  l0._graph = self
  l0._name = "box_Proximity_Monitor_49"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|986830212"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_49_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_TaxiController_v2_115 = cbox:CreateBox("Domino/System/TaxiController_v2.lua")
  l0 = self.box_TaxiController_v2_115
  l0._graph = self
  l0._name = "box_TaxiController_v2_115"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1100715544"
  l0.Out = DummyFunction
  l0.TaxiCarValid = self.f_box_TaxiController_v2_115_TaxiCarValid
  l0.TaxiCarInvalid = self.f_box_TaxiController_v2_115_TaxiCarInvalid
  l0.OnClientPickedUp = DummyFunction
  l0.OnClientDroppedOff = DummyFunction
  l0.OnClientSpawned = DummyFunction
  self.box_TaxiController_v2_97 = cbox:CreateBox("Domino/System/TaxiController_v2.lua")
  l0 = self.box_TaxiController_v2_97
  l0._graph = self
  l0._name = "box_TaxiController_v2_97"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1151012034"
  l0.Out = DummyFunction
  l0.TaxiCarValid = self.f_box_TaxiController_v2_97_TaxiCarValid
  l0.TaxiCarInvalid = self.f_box_TaxiController_v2_97_TaxiCarInvalid
  l0.OnClientPickedUp = DummyFunction
  l0.OnClientDroppedOff = DummyFunction
  l0.OnClientSpawned = DummyFunction
  self.box_MapPointController_v3_63 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_63
  l0._graph = self
  l0._name = "box_MapPointController_v3_63"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1185543205"
  l0.Shown = self.f_box_MapPointController_v3_63_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_v3_41 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_41
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1198966336"
  l0.Out = self.f_box_MissionMessageController_v3_41_Out
  l0.MessageCompleted = DummyFunction
  self.box_SetBoolean_v2_102 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_102
  l0._graph = self
  l0._name = "box_SetBoolean_v2_102"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1251355068"
  l0.Out = self.f_box_SetBoolean_v2_102_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_102_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_102_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_102_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_102_SetFromBool
  self.box_TaxiController_v2_124 = cbox:CreateBox("Domino/System/TaxiController_v2.lua")
  l0 = self.box_TaxiController_v2_124
  l0._graph = self
  l0._name = "box_TaxiController_v2_124"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1395584351"
  l0.Out = DummyFunction
  l0.TaxiCarValid = DummyFunction
  l0.TaxiCarInvalid = DummyFunction
  l0.OnClientPickedUp = self.f_box_TaxiController_v2_124_OnClientPickedUp
  l0.OnClientDroppedOff = DummyFunction
  l0.OnClientSpawned = self.f_box_TaxiController_v2_124_OnClientSpawned
  self.box_MultipleOR_99 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_99
  l0._graph = self
  l0._name = "box_MultipleOR_99"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1542586099"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_99_Out
  self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_98
  l0._graph = self
  l0._name = "box_MultipleOR_98"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1591282664"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_98_Out
  self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_46
  l0._graph = self
  l0._name = "box_MultipleOR_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1621977299"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_46_Out
  self.box_Proximity_Monitor_56 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_56
  l0._graph = self
  l0._name = "box_Proximity_Monitor_56"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1726710604"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_56_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_56_ExitRadius
  self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_62
  l0._graph = self
  l0._name = "box_MultipleOR_62"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1754718895"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_62_Out
  self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_40
  l0._graph = self
  l0._name = "box_MultipleOR_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1867254846"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_40_Out
  self.box_MultipleOR_81 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_81
  l0._graph = self
  l0._name = "box_MultipleOR_81"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1922804145"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_81_Out
  self.box_SetBoolean_v2_106 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_106
  l0._graph = self
  l0._name = "box_SetBoolean_v2_106"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1983401995"
  l0.Out = self.f_box_SetBoolean_v2_106_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_106_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_106_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_106_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_106_SetFromBool
  self.box_SetBoolean_v2_59 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_59
  l0._graph = self
  l0._name = "box_SetBoolean_v2_59"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2025880132"
  l0.Out = self.f_box_SetBoolean_v2_59_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_59_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_59_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_59_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_59_SetFromBool
  self.box_MultipleOR_118 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_118
  l0._graph = self
  l0._name = "box_MultipleOR_118"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2026959115"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_118_Out
  self.box_VehicleMonitor_v2_53 = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_53
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_53"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2082688380"
  l0.Enabled = self.f_box_VehicleMonitor_v2_53_Enabled
  l0.Disabled = self.f_box_VehicleMonitor_v2_53_Disabled
  l0.Enter = self.f_box_VehicleMonitor_v2_53_Enter
  l0.Entered = self.f_box_VehicleMonitor_v2_53_Entered
  l0.Leave = self.f_box_VehicleMonitor_v2_53_Leave
  l0.Exiting = self.f_box_VehicleMonitor_v2_53_Exiting
  l0.ChangeSeat = self.f_box_VehicleMonitor_v2_53_ChangeSeat
  l0.BailedOut = self.f_box_VehicleMonitor_v2_53_BailedOut
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  l0 = self.box_MapPointController_v3_34
  l0.MapPoint = self.IconPickUp
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2132454885", "2132454885", "PickUp_CarAndClient", "Disable", "box_MapPointController_v3_34.Hide", self, l0)
  l0:Hide()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|13376114"
  l0.Out = self.f_box_Get_Player_ID_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1269966030", "1269966030", "PickUp_CarAndClient", "Enable", "box_Get_Player_ID_13.In", self, l0)
  l0:In()
end
function export:f_box_Timer_v2_86_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerInVehicle
  l0.B = self.isCorrectVehicle
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_64"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1619040643"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = self.f_box_Compare_Boolean_v2_64_A_and_B
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_86
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1781525716", "1781525716", "PickUp_CarAndClient", "box_Timer_v2_86.TimeElapsed", "box_Compare_Boolean_v2_64.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_41
  l0.Objective = self.Objective
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1881536765", "1881536765", "PickUp_CarAndClient", "box_Get_Player_ID_13.Out", "box_MissionMessageController_v3_41.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_56()
  l0 = self.box_Proximity_Monitor_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|586130427", "586130427", "PickUp_CarAndClient", "box_Ordered_Output_15.Out", "box_Proximity_Monitor_56.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_105"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1447198522"
  l0.Out = self.f_box_Simple_Node_105_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|809281815", "809281815", "PickUp_CarAndClient", "box_Ordered_Output_15.Out", "box_Simple_Node_105.In", clone, l0)
  l0:In()
end
function export:f_box_MapPointController_v3_34_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_52"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|522556630"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_52_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_52_Out_1
  l0 = self.box_MapPointController_v3_34
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1480359606", "1480359606", "PickUp_CarAndClient", "box_MapPointController_v3_34.Hidden", "box_Ordered_Output_52.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_58_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_99()
  l0 = self.box_MultipleOR_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|25302637", "25302637", "PickUp_CarAndClient", "box_Compare_Boolean_v2_58.A_is_False", "box_MultipleOR_99.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_58_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isCorrectVehicle
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_82"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|468115242"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_82_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|853883545", "853883545", "PickUp_CarAndClient", "box_Compare_Boolean_v2_58.A_is_True", "box_Compare_Boolean_v2_82.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_20_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_48()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|418847805", "418847805", "PickUp_CarAndClient", "box_Compare_Boolean_v2_20.A_is_True", "box_3DGPSController_48.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Boolean_v2_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_53()
  l0 = self.box_VehicleMonitor_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|919066185", "919066185", "PickUp_CarAndClient", "box_Compare_Boolean_v2_20.Out", "box_VehicleMonitor_v2_53.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Test_if_Nil_117_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiController_v2_123
  l0.ClientClo = self.ClientCLO
  l0.Vehicle = self.playerVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1125026355", "1125026355", "PickUp_CarAndClient", "box_Test_if_Nil_117.Is_nil", "box_TaxiController_v2_123.PickupClient", clone, l0)
  l0:PickupClient()
end
function export:f_box_Test_if_Nil_117_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiController_v2_124
  l0.Client = self.ClientEntity
  l0.Vehicle = self.playerVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1068298891", "1068298891", "PickUp_CarAndClient", "box_Test_if_Nil_117.Is_not_nil", "box_TaxiController_v2_124.PickupClient", clone, l0)
  l0:PickupClient()
end
function export:f_box_MultipleOR_125_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.tmpClient
  l0._graph = self
  l0._name = "box_Set_Entity_121"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|753940241"
  l0.Out = self.f_box_Set_Entity_121_Out
  l0 = self.box_MultipleOR_125
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1155980745", "1155980745", "PickUp_CarAndClient", "box_MultipleOR_125.Out", "box_Set_Entity_121.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_SetBoolean_v2_100_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_100
  self.isCorrectVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_100_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_100
  self.isCorrectVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_100_SetFromBool()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_100
  self.isCorrectVehicle = l0.Target
  self:OnEnter_box_MultipleOR_104()
  l1 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1501541610", "1501541610", "PickUp_CarAndClient", "box_SetBoolean_v2_100.SetFromBool", "box_MultipleOR_104.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_100_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_100
  self.isCorrectVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_100_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_100
  self.isCorrectVehicle = l0.Target
end
function export:f_box_Force_Pawns_Vehicle_Stop_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_44
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2041103053", "2041103053", "PickUp_CarAndClient", "box_Force_Pawns_Vehicle_Stop_1.Out", "box_Timer_v2_44.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_44_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_116"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|746592844"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_116_Hidden
  l0 = self.box_Timer_v2_44
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|575930954", "575930954", "PickUp_CarAndClient", "box_Timer_v2_44.TimeElapsed", "box_Show_Or_Hide_All_UI_116.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MultipleOR_104_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_61"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|792291554"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_61_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_61_Out_1
  l0 = self.box_MultipleOR_104
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1754222095", "1754222095", "PickUp_CarAndClient", "box_MultipleOR_104.Out", "box_Ordered_Output_61.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_82_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_99()
  l0 = self.box_MultipleOR_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2039384073", "2039384073", "PickUp_CarAndClient", "box_Compare_Boolean_v2_82.A_is_False", "box_MultipleOR_99.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_52_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1443843394", "1443843394", "PickUp_CarAndClient", "box_Ordered_Output_52.Out", "Disabled", clone, self)
  self:Disabled()
end
function export:f_box_Ordered_Output_52_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1766851553", "1766851553", "PickUp_CarAndClient", "box_Ordered_Output_52.Out", "box_MultipleOR_46.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_96_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiController_v2_115
  l0.Vehicle = self.playerVehicle
  l0.Config = "TaxiRideGameplayBrick.9223372049113135648"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|139768704", "139768704", "PickUp_CarAndClient", "box_Test_if_Nil_96.Is_nil", "box_TaxiController_v2_115.TaxiValidateVehicle", clone, l0)
  l0:TaxiValidateVehicle()
end
function export:f_box_Test_if_Nil_96_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiController_v2_97
  l0.Vehicle = self.playerVehicle
  l0.Config = self.VehicleFilterConfig
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1825807180", "1825807180", "PickUp_CarAndClient", "box_Test_if_Nil_96.Is_not_nil", "box_TaxiController_v2_97.TaxiValidateVehicle", clone, l0)
  l0:TaxiValidateVehicle()
end
function export:f_box_MultipleOR_101_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_100
  l0.Bool = 0
  l0 = self.box_MultipleOR_101
  l1 = self.box_SetBoolean_v2_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|261650384", "261650384", "PickUp_CarAndClient", "box_MultipleOR_101.Out", "box_SetBoolean_v2_100.FromBool", l0, l1)
  l1:FromBool()
end
function export:f_box_Show_Or_Hide_All_UI_116_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.ClientEntity
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_117"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|157674790"
  l0.Is_nil = self.f_box_Test_if_Nil_117_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_117_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1471182727", "1471182727", "PickUp_CarAndClient", "box_Show_Or_Hide_All_UI_116.Hidden", "box_Test_if_Nil_117.In", clone, l0)
  l0:In()
end
function export:f_box_Set_Entity_121_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Client = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1754259350", "1754259350", "PickUp_CarAndClient", "box_Set_Entity_121.Out", "Spawned", clone, self)
  self:Spawned()
end
function export:f_box_MapPointController_v3_3_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  l0.PlayerEntity = nil
  l0._graph = self
  l0._name = "box_Force_Pawns_Vehicle_Stop_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|398150172"
  l0.Out = self.f_box_Force_Pawns_Vehicle_Stop_1_Out
  l0 = self.box_MapPointController_v3_3
  l1 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1553154192", "1553154192", "PickUp_CarAndClient", "box_MapPointController_v3_3.Hidden", "box_Force_Pawns_Vehicle_Stop_1.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_61_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_65"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1920540891"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_65_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_65_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1211447591", "1211447591", "PickUp_CarAndClient", "box_Ordered_Output_61.Out", "box_Ordered_Output_65.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_61_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_81()
  l0 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1048356132", "1048356132", "PickUp_CarAndClient", "box_Ordered_Output_61.Out", "box_MultipleOR_81.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_84_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_75()
  l0 = self.box_MultipleOR_84
  l1 = self.box_LogicGate_v2_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1657733235", "1657733235", "PickUp_CarAndClient", "box_MultipleOR_84.Out", "box_LogicGate_v2_75.In", l0, l1)
  l1:In()
end
function export:f_box_LogicGate_v2_75_Closed()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_55
  l0.Bool = 0
  l0 = self.box_LogicGate_v2_75
  l1 = self.box_SetBoolean_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|282366814", "282366814", "PickUp_CarAndClient", "box_LogicGate_v2_75.Closed", "box_SetBoolean_v2_55.FromBool", l0, l1)
  l1:FromBool()
end
function export:f_box_LogicGate_v2_75_Out()
  local l0
  self = self._graph
  self:OnEnter_box_LogicGate_v2_75()
  l0 = self.box_LogicGate_v2_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|554729764", "554729764", "PickUp_CarAndClient", "box_LogicGate_v2_75.Out", "box_LogicGate_v2_75.Close", l0, l0)
  l0:Close()
end
function export:f_box_SetBoolean_v2_55_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_55
  self.PlayerInVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_55_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_55
  self.PlayerInVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_55_SetFromBool()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_55
  self.PlayerInVehicle = l0.Target
  l0 = self.box_SetBoolean_v2_106
  l0.Bool = 0
  l0 = self.box_SetBoolean_v2_55
  l1 = self.box_SetBoolean_v2_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1777490588", "1777490588", "PickUp_CarAndClient", "box_SetBoolean_v2_55.SetFromBool", "box_SetBoolean_v2_106.FromBool", l0, l1)
  l1:FromBool()
end
function export:f_box_SetBoolean_v2_55_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_55
  self.PlayerInVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_55_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_55
  self.PlayerInVehicle = l0.Target
end
function export:f_box_TaxiController_v2_123_OnClientPickedUp()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_118()
  l0 = self.box_TaxiController_v2_123
  l1 = self.box_MultipleOR_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|386778333", "386778333", "PickUp_CarAndClient", "box_TaxiController_v2_123.OnClientPickedUp", "box_MultipleOR_118.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiController_v2_123_OnClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiController_v2_123
  self.tmpClient = l0.ClientEntity
  self:OnEnter_box_MultipleOR_125()
  l1 = self.box_MultipleOR_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|804876117", "804876117", "PickUp_CarAndClient", "box_TaxiController_v2_123.OnClientSpawned", "box_MultipleOR_125.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Proximity_Monitor_49_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_86
  l0.Seconds = 0.1
  l0 = self.box_Proximity_Monitor_49
  l1 = self.box_Timer_v2_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1955673857", "1955673857", "PickUp_CarAndClient", "box_Proximity_Monitor_49.EnterRadius", "box_Timer_v2_86.Start", l0, l1)
  l1:Start()
end
function export:f_box_Show_Or_Hide_All_UI_30_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1660043490"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_29_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|681503959", "681503959", "PickUp_CarAndClient", "box_Show_Or_Hide_All_UI_30.Shown", "box_SetActionMap_v2_29.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_TaxiController_v2_115_TaxiCarInvalid()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_101()
  l0 = self.box_TaxiController_v2_115
  l1 = self.box_MultipleOR_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1400885726", "1400885726", "PickUp_CarAndClient", "box_TaxiController_v2_115.TaxiCarInvalid", "box_MultipleOR_101.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiController_v2_115_TaxiCarValid()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_98()
  l0 = self.box_TaxiController_v2_115
  l1 = self.box_MultipleOR_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2010438701", "2010438701", "PickUp_CarAndClient", "box_TaxiController_v2_115.TaxiCarValid", "box_MultipleOR_98.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiController_v2_97_TaxiCarInvalid()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_101()
  l0 = self.box_TaxiController_v2_97
  l1 = self.box_MultipleOR_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1987594048", "1987594048", "PickUp_CarAndClient", "box_TaxiController_v2_97.TaxiCarInvalid", "box_MultipleOR_101.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TaxiController_v2_97_TaxiCarValid()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_98()
  l0 = self.box_TaxiController_v2_97
  l1 = self.box_MultipleOR_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1230092700", "1230092700", "PickUp_CarAndClient", "box_TaxiController_v2_97.TaxiCarValid", "box_MultipleOR_98.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_83_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_49()
  l0 = self.box_Proximity_Monitor_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|272411679", "272411679", "PickUp_CarAndClient", "box_Simple_Node_83.Out", "box_Proximity_Monitor_49.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MapPointController_v3_63_Shown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowGPS
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1896567790"
  l0.Out = self.f_box_Compare_Boolean_v2_7_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_7_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MapPointController_v3_63
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|502033633", "502033633", "PickUp_CarAndClient", "box_MapPointController_v3_63.Shown", "box_Compare_Boolean_v2_7.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_41_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_63
  l0.MapPoint = self.IconPickUp
  l0.LocText = self.LocText
  l0.LocMapMarkerTitle = self.LocText
  l0 = self.box_MissionMessageController_v3_41
  l1 = self.box_MapPointController_v3_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|648818658", "648818658", "PickUp_CarAndClient", "box_MissionMessageController_v3_41.Out", "box_MapPointController_v3_63.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.playerVehicle
  l0._graph = self
  l0._name = "box_Set_Entity_60"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2057738201"
  l0.Out = self.f_box_Set_Entity_60_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|457107743", "457107743", "PickUp_CarAndClient", "box_Ordered_Output_24.Out", "box_Set_Entity_60.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1799893733"
  l0.Out = self.f_box_Simple_Node_35_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2124524452", "2124524452", "PickUp_CarAndClient", "box_Ordered_Output_24.Out", "box_Simple_Node_35.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_102_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_102
  self.isCorrectVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_102_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_102
  self.isCorrectVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_102_SetFromBool()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_102
  self.isCorrectVehicle = l0.Target
  self:OnEnter_box_MultipleOR_104()
  l1 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1194843229", "1194843229", "PickUp_CarAndClient", "box_SetBoolean_v2_102.SetFromBool", "box_MultipleOR_104.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_102_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_102
  self.isCorrectVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_102_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_102
  self.isCorrectVehicle = l0.Target
end
function export:f_box_SetActionMap_v2_18_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1223437507"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|595801219", "595801219", "PickUp_CarAndClient", "box_SetActionMap_v2_18.Pushed", "box_Ordered_Output_24.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiController_v2_124_OnClientPickedUp()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_118()
  l0 = self.box_TaxiController_v2_124
  l1 = self.box_MultipleOR_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1512643901", "1512643901", "PickUp_CarAndClient", "box_TaxiController_v2_124.OnClientPickedUp", "box_MultipleOR_118.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TaxiController_v2_124_OnClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiController_v2_124
  self.tmpClient = l0.ClientEntity
  self:OnEnter_box_MultipleOR_125()
  l1 = self.box_MultipleOR_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|75835534", "75835534", "PickUp_CarAndClient", "box_TaxiController_v2_124.OnClientSpawned", "box_MultipleOR_125.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_105_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_83"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1158511041"
  l0.Out = self.f_box_Simple_Node_83_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1518898842", "1518898842", "PickUp_CarAndClient", "box_Simple_Node_105.Out", "box_Simple_Node_83.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_99_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_54()
  l0 = self.box_MultipleOR_99
  l1 = self.box_TutorialController_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1324777", "1324777", "PickUp_CarAndClient", "box_MultipleOR_99.Out", "box_TutorialController_54.Display", l0, l1)
  l1:Display()
end
function export:f_box_MultipleOR_98_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_102
  l0.Bool = 1
  l0 = self.box_MultipleOR_98
  l1 = self.box_SetBoolean_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1628322834", "1628322834", "PickUp_CarAndClient", "box_MultipleOR_98.Out", "box_SetBoolean_v2_102.FromBool", l0, l1)
  l1:FromBool()
end
function export:f_box_Compare_Boolean_v2_64_A_and_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1385499028"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_18_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1126657157", "1126657157", "PickUp_CarAndClient", "box_Compare_Boolean_v2_64.A_and_B", "box_SetActionMap_v2_18.Push", clone, l0)
  l0:Push()
end
function export:f_box_MultipleOR_46_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowGPS
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|147147429"
  l0.Out = self.f_box_Compare_Boolean_v2_20_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_20_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_46
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|311154156", "311154156", "PickUp_CarAndClient", "box_MultipleOR_46.Out", "box_Compare_Boolean_v2_20.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_29_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|824699187", "824699187", "PickUp_CarAndClient", "box_SetActionMap_v2_29.Popped", "PickedUp", clone, self)
  self:PickedUp()
end
function export:f_box_Proximity_Monitor_56_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerInVehicle
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_58"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|142610249"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_58_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_58_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Proximity_Monitor_56
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|358517167", "358517167", "PickUp_CarAndClient", "box_Proximity_Monitor_56.EnterRadius", "box_Compare_Boolean_v2_58.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_56_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_62()
  l0 = self.box_Proximity_Monitor_56
  l1 = self.box_MultipleOR_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1585636238", "1585636238", "PickUp_CarAndClient", "box_Proximity_Monitor_56.ExitRadius", "box_MultipleOR_62.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_62_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_54()
  l0 = self.box_MultipleOR_62
  l1 = self.box_TutorialController_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1956498994", "1956498994", "PickUp_CarAndClient", "box_MultipleOR_62.Out", "box_TutorialController_54.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Simple_Node_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1176980090", "1176980090", "PickUp_CarAndClient", "box_Simple_Node_35.Out", "box_MultipleOR_46.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_56()
  l0 = self.box_MultipleOR_40
  l1 = self.box_Proximity_Monitor_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|309067488", "309067488", "PickUp_CarAndClient", "box_MultipleOR_40.Out", "box_Proximity_Monitor_56.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Boolean_v2_7_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_48()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1169061476", "1169061476", "PickUp_CarAndClient", "box_Compare_Boolean_v2_7.A_is_True", "box_3DGPSController_48.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_53()
  l0 = self.box_VehicleMonitor_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|409844525", "409844525", "PickUp_CarAndClient", "box_Compare_Boolean_v2_7.Out", "box_VehicleMonitor_v2_53.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_65_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1151782995", "1151782995", "PickUp_CarAndClient", "box_Ordered_Output_65.Out", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_65_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_62()
  l0 = self.box_MultipleOR_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|101010194", "101010194", "PickUp_CarAndClient", "box_Ordered_Output_65.Out", "box_MultipleOR_62.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_81_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_49()
  l0 = self.box_MultipleOR_81
  l1 = self.box_Proximity_Monitor_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1258671033", "1258671033", "PickUp_CarAndClient", "box_MultipleOR_81.Out", "box_Proximity_Monitor_49.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_106_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_106
  self.isCorrectVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_106_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_106
  self.isCorrectVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_106_SetFromBool()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_106
  self.isCorrectVehicle = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_80"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2006155814"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_80_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_80_Out_1
  l0 = self.box_SetBoolean_v2_106
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|871899613", "871899613", "PickUp_CarAndClient", "box_SetBoolean_v2_106.SetFromBool", "box_Ordered_Output_80.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_106_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_106
  self.isCorrectVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_106_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_106
  self.isCorrectVehicle = l0.Target
end
function export:f_box_Ordered_Output_85_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_59
  l0.Bool = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|610933501", "610933501", "PickUp_CarAndClient", "box_Ordered_Output_85.Out", "box_SetBoolean_v2_59.FromBool", clone, l0)
  l0:FromBool()
end
function export:f_box_Ordered_Output_85_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_75()
  l0 = self.box_LogicGate_v2_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2042633374", "2042633374", "PickUp_CarAndClient", "box_Ordered_Output_85.Out", "box_LogicGate_v2_75.Open", clone, l0)
  l0:Open()
end
function export:f_box_Ordered_Output_80_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1187237660", "1187237660", "PickUp_CarAndClient", "box_Ordered_Output_80.Out", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_81()
  l0 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1211187560", "1211187560", "PickUp_CarAndClient", "box_Ordered_Output_80.Out", "box_MultipleOR_81.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SetBoolean_v2_59_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.PlayerInVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.PlayerInVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetFromBool()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.PlayerInVehicle = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.VehicleFilterConfig
  l0._graph = self
  l0._name = "box_Test_if_Nil_96"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|612537820"
  l0.Is_nil = self.f_box_Test_if_Nil_96_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_96_Is_not_nil
  l0 = self.box_SetBoolean_v2_59
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1883336433", "1883336433", "PickUp_CarAndClient", "box_SetBoolean_v2_59.SetFromBool", "box_Test_if_Nil_96.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_59_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.PlayerInVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_59_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.PlayerInVehicle = l0.Target
end
function export:f_box_MultipleOR_118_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1089929252"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_30_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_MultipleOR_118
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|38785629", "38785629", "PickUp_CarAndClient", "box_MultipleOR_118.Out", "box_Show_Or_Hide_All_UI_30.Show", l0, l1)
  l1:Show()
end
function export:f_box_Set_Entity_60_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Vehicle = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_3
  l0.MapPoint = self.IconPickUp
  l0.LocText = self.LocText
  l0.LocMapMarkerTitle = self.LocText
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1299206120", "1299206120", "PickUp_CarAndClient", "box_Set_Entity_60.Out", "box_MapPointController_v3_3.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VehicleMonitor_v2_53_BailedOut()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_53
  self.playerVehicle = l0.VehicleID
  self:OnEnter_box_MultipleOR_84()
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1502536980", "1502536980", "PickUp_CarAndClient", "box_VehicleMonitor_v2_53.BailedOut", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_VehicleMonitor_v2_53_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_53
  self.playerVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v2_53_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|61810994"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  l0 = self.box_VehicleMonitor_v2_53
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1386449518", "1386449518", "PickUp_CarAndClient", "box_VehicleMonitor_v2_53.Disabled", "box_Ordered_Output_15.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v2_53_Enabled()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1198056715", "1198056715", "PickUp_CarAndClient", "box_VehicleMonitor_v2_53.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_VehicleMonitor_v2_53_Enter()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_53
  self.playerVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v2_53_Entered()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_53
  self.playerVehicle = l0.VehicleID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_85"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1987889220"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_85_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_85_Out_1
  l0 = self.box_VehicleMonitor_v2_53
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|2056793089", "2056793089", "PickUp_CarAndClient", "box_VehicleMonitor_v2_53.Entered", "box_Ordered_Output_85.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v2_53_Exiting()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_53
  self.playerVehicle = l0.VehicleID
  self:OnEnter_box_MultipleOR_84()
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1702019777", "1702019777", "PickUp_CarAndClient", "box_VehicleMonitor_v2_53.Exiting", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v2_53_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_53
  self.playerVehicle = l0.VehicleID
  self:OnEnter_box_MultipleOR_84()
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|1250966714", "1250966714", "PickUp_CarAndClient", "box_VehicleMonitor_v2_53.Leave", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(0)
end
function export:OnEnter_box_MultipleOR_125()
end
function export:OnEnter_box_3DGPSController_48()
  local l0
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = self.IconPickUp
  l0.Path = nil
  l0.Index = nil
  l0.PathType = nil
  l0._graph = self
  l0._name = "box_3DGPSController_48"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@PickUp_CarAndClient|345876713"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_MultipleOR_104()
end
function export:OnEnter_box_MultipleOR_101()
end
function export:OnEnter_box_MultipleOR_84()
end
function export:OnEnter_box_LogicGate_v2_75()
end
function export:OnEnter_box_TutorialController_54()
  local l0
  l0 = self.box_TutorialController_54
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "AcquireVehicle",
    id = "337818"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Proximity_Monitor_49()
  local l0
  l0 = self.box_Proximity_Monitor_49
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.IconPickUp
  l0.Radius = self.Range
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_99()
end
function export:OnEnter_box_MultipleOR_98()
end
function export:OnEnter_box_MultipleOR_46()
end
function export:OnEnter_box_Proximity_Monitor_56()
  local l0
  l0 = self.box_Proximity_Monitor_56
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.IconPickUp
  l0.Radius = 30
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_62()
end
function export:OnEnter_box_MultipleOR_40()
end
function export:OnEnter_box_MultipleOR_81()
end
function export:OnEnter_box_MultipleOR_118()
end
function export:OnEnter_box_VehicleMonitor_v2_53()
  local l0
  l0 = self.box_VehicleMonitor_v2_53
  l0.CheckNow = 1
end
function export:Disabled()
end
function export:Enabled()
end
function export:Spawned()
end
function export:FailedMoveAndAssign()
end
function export:PickedUp()
end
_compilerVersion = 4
