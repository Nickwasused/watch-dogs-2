export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GPS3DController.lua")
  cbox:RegisterBox("Domino/System/CameraContextController.lua")
  cbox:RegisterBox("Domino/System/CameraRealign.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("Domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/CameraSetDominoReference.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Client_PickUp"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp"
  self.PickedUp = DummyFunction
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.Spawned = DummyFunction
  self.FailedMoveAndAssign = DummyFunction
  self.tmpClient = nil
  self.yPos = 0
  self.xPos = 0
  self.yRot = 0
  self.xRot = 0
  self.zPos = 0
  self.zRot = 0
  self.PlayerEntity = nil
  self.SeatPosX = 0
  self.SeatPosY = 0
  self.SeatPosZ = 0
  self.CurrentCLO = nil
  self.tmp_ClientsList_IDs = {}
  self.CurrentClient = nil
  self.RemainingClients = 0
  self.box_Proximity_Monitor_23 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_23
  l0._graph = self
  l0._name = "box_Proximity_Monitor_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|19998124"
  l0.Enabled = self.f_box_Proximity_Monitor_23_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_23_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_23_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_23_ExitRadius
  self.box_CameraContextController_37 = cbox:CreateBox("Domino/System/CameraContextController.lua")
  l0 = self.box_CameraContextController_37
  l0._graph = self
  l0._name = "box_CameraContextController_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|76307033"
  l0.ContextStarted = DummyFunction
  l0.ContextStopped = self.f_box_CameraContextController_37_ContextStopped
  l0.Out = DummyFunction
  self.box_Timer_v2_70 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_70
  l0._graph = self
  l0._name = "box_Timer_v2_70"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|113162448"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_70_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|283729686"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_VehicleSeatingController_16 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_16
  l0._graph = self
  l0._name = "box_VehicleSeatingController_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|328736856"
  l0.Assigned = self.f_box_VehicleSeatingController_16_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_16_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Set_Domino_Camera_Reference_68 = cbox:CreateBox("Domino/System/CameraSetDominoReference.lua")
  l0 = self.box_Set_Domino_Camera_Reference_68
  l0._graph = self
  l0._name = "box_Set_Domino_Camera_Reference_68"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|519729398"
  l0.Out = self.f_box_Set_Domino_Camera_Reference_68_Out
  self.box_ListForEach_8 = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_8
  l0._graph = self
  l0._name = "box_ListForEach_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|620654909"
  l0.Started = self.f_box_ListForEach_8_Started
  l0.Stopped = self.f_box_ListForEach_8_Stopped
  l0.ForEach = self.f_box_ListForEach_8_ForEach
  l0.GotNext = self.f_box_ListForEach_8_GotNext
  l0.EndOfList = self.f_box_ListForEach_8_EndOfList
  self.box_CameraRealign_74 = cbox:CreateBox("Domino/System/CameraRealign.lua")
  l0 = self.box_CameraRealign_74
  l0._graph = self
  l0._name = "box_CameraRealign_74"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|697327899"
  l0.Out = self.f_box_CameraRealign_74_Out
  self.box_CLOController_28 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_28
  l0._graph = self
  l0._name = "box_CLOController_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|759178593"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_28_OnUserInPlace
  self.box_MissionMessageController_v3_4 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_4
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|773761818"
  l0.Out = self.f_box_MissionMessageController_v3_4_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_5 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|976174999"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_33 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_33
  l0._graph = self
  l0._name = "box_Timer_v2_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1031456813"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_33_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_19 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_19
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1037836954"
  l0.Out = self.f_box_MissionMessageController_v3_19_Out
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v3_35 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_35
  l0._graph = self
  l0._name = "box_MapPointController_v3_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1106831680"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_35_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CLOController_10 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_10
  l0._graph = self
  l0._name = "box_CLOController_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1183162011"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_10_OnUserInPlace
  self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1214937931"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_OnceOnly_v3_2 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_2
  l0._graph = self
  l0._name = "box_OnceOnly_v3_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1282859350"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_2_Out
  l0.ResetOut = DummyFunction
  self.box_CameraContextController_71 = cbox:CreateBox("Domino/System/CameraContextController.lua")
  l0 = self.box_CameraContextController_71
  l0._graph = self
  l0._name = "box_CameraContextController_71"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1395590751"
  l0.ContextStarted = DummyFunction
  l0.ContextStopped = self.f_box_CameraContextController_71_ContextStopped
  l0.Out = DummyFunction
  self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_26
  l0._graph = self
  l0._name = "box_MultipleOR_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1412226720"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_26_Out
  self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_41
  l0._graph = self
  l0._name = "box_MultipleOR_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1717478116"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_41_Out
  self.box_ListWriter_13 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_13
  l0._graph = self
  l0._name = "box_ListWriter_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1798480403"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_13_Added
  l0.Removed = self.f_box_ListWriter_13_Removed
  l0.Out = self.f_box_ListWriter_13_Out
  self.box_Timer_v2_27 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_27
  l0._graph = self
  l0._name = "box_Timer_v2_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1933059154"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_84 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_84
  l0._graph = self
  l0._name = "box_Timer_v2_84"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2026423400"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_84_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MapPointController_v3_72 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_72
  l0._graph = self
  l0._name = "box_MapPointController_v3_72"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2027074501"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CameraContextController_69 = cbox:CreateBox("Domino/System/CameraContextController.lua")
  l0 = self.box_CameraContextController_69
  l0._graph = self
  l0._name = "box_CameraContextController_69"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2030087328"
  l0.ContextStarted = self.f_box_CameraContextController_69_ContextStarted
  l0.ContextStopped = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleSeatingController_77 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_77
  l0._graph = self
  l0._name = "box_VehicleSeatingController_77"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2056855820"
  l0.Assigned = self.f_box_VehicleSeatingController_77_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_77_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_77_AbortMoveAndUseSeat
  l0.Out = DummyFunction
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
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1334917679"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1083827528", "1083827528", "Client_PickUp", "Disable", "box_Ordered_Output_22.In", self, l0)
  l0:In()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|756581146"
  l0.Out = self.f_box_Get_Player_ID_11_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|96613705", "96613705", "Client_PickUp", "Enable", "box_Get_Player_ID_11.In", self, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_24_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_28
  l0.CLO = self.ClientCLO
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1038000050", "1038000050", "Client_PickUp", "box_Test_if_Nil_24.Is_nil", "box_CLOController_28.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Test_if_Nil_24_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.ClientEntity
  l0._graph = self
  l0._name = "box_Set_Entity_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1260993259"
  l0.Out = self.f_box_Set_Entity_34_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1207915179", "1207915179", "Client_PickUp", "box_Test_if_Nil_24.Is_not_nil", "box_Set_Entity_34.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Proximity_Monitor_23_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_72
  l0.MapPoint = self.IconPickUp
  l0 = self.box_Proximity_Monitor_23
  l1 = self.box_MapPointController_v3_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|610277510", "610277510", "Client_PickUp", "box_Proximity_Monitor_23.Disabled", "box_MapPointController_v3_72.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Proximity_Monitor_23_Enabled()
  local l0
  self = self._graph
  l0 = self.box_Proximity_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2128118223", "2128118223", "Client_PickUp", "box_Proximity_Monitor_23.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_Proximity_Monitor_23_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_35()
  l0 = self.box_Proximity_Monitor_23
  l1 = self.box_MapPointController_v3_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|197691140", "197691140", "Client_PickUp", "box_Proximity_Monitor_23.EnterRadius", "box_MapPointController_v3_35.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Proximity_Monitor_23_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_35()
  l0 = self.box_Proximity_Monitor_23
  l1 = self.box_MapPointController_v3_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|84443101", "84443101", "Client_PickUp", "box_Proximity_Monitor_23.ExitRadius", "box_MapPointController_v3_35.Show", l0, l1)
  l1:Show()
end
function export:f_box_CameraContextController_37_ContextStopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_CameraContextController_37
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1226984798", "1226984798", "Client_PickUp", "box_CameraContextController_37.ContextStopped", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_70_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CameraContextController_71()
  l0 = self.box_Timer_v2_70
  l1 = self.box_CameraContextController_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|792096517", "792096517", "Client_PickUp", "box_Timer_v2_70.TimeElapsed", "box_CameraContextController_71.StartContext", l0, l1)
  l1:StartContext()
end
function export:f_box_Compare_Integers_v2_21_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.tmp_ClientsList_IDs
  l0._graph = self
  l0._name = "box_Set_List_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|681456614"
  l0.Out = self.f_box_Set_List_15_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|715853026", "715853026", "Client_PickUp", "box_Compare_Integers_v2_21.A_eq_B", "box_Set_List_15.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_38
  l1 = self.box_CameraRealign_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|651173669", "651173669", "Client_PickUp", "box_MultipleOR_38.Out", "box_CameraRealign_74.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_VehicleSeatingController_16_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1236847671"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_40_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_40_Out_1
  l0 = self.box_VehicleSeatingController_16
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|659590386", "659590386", "Client_PickUp", "box_VehicleSeatingController_16.AssignCompleted", "box_Ordered_Output_40.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_16_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_16
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1943898099", "1943898099", "Client_PickUp", "box_VehicleSeatingController_16.Assigned", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(0)
end
function export:f_box_Simple_Node_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1930021525", "1930021525", "Client_PickUp", "box_Simple_Node_3.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_7_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
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
  l0._name = "box_Test_if_Nil_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|13267586"
  l0.Is_nil = self.f_box_Test_if_Nil_24_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_24_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|414287236", "414287236", "Client_PickUp", "box_Test_if_Nil_7.Is_nil", "box_Test_if_Nil_24.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.ClientsList_CLOs
  l0._graph = self
  l0._name = "box_ListLength_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1061807731"
  l0.Out = self.f_box_ListLength_32_Out
  l0.Empty = self.f_box_ListLength_32_Empty
  l0.NotEmpty = self.f_box_ListLength_32_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|415207312", "415207312", "Client_PickUp", "box_Test_if_Nil_7.Is_not_nil", "box_ListLength_32.GetLength", clone, l0)
  l0:GetLength()
end
function export:f_box_Set_Entity_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Client = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1963680342"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_30_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_30_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|873617582", "873617582", "Client_PickUp", "box_Set_Entity_29.Out", "box_Ordered_Output_30.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_36_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_25()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2078357840", "2078357840", "Client_PickUp", "box_Compare_Boolean_v2_36.A_is_True", "box_3DGPSController_25.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_23()
  l0 = self.box_Proximity_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1103318094", "1103318094", "Client_PickUp", "box_Compare_Boolean_v2_36.Out", "box_Proximity_Monitor_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Set_Domino_Camera_Reference_68_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CameraContextController_69
  l0.Config = "CameraContext.9223372048779319939"
  l0.BlendIn = "CameraBlendListDB.9223372048779319847"
  l0 = self.box_Set_Domino_Camera_Reference_68
  l1 = self.box_CameraContextController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1233262599", "1233262599", "Client_PickUp", "box_Set_Domino_Camera_Reference_68.Out", "box_CameraContextController_69.StartContext", l0, l1)
  l1:StartContext()
end
function export:f_box_ListForEach_8_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_8
  self.CurrentCLO = l0.Data
end
function export:f_box_ListForEach_8_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_8
  self.CurrentCLO = l0.Data
end
function export:f_box_ListForEach_8_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_8
  self.CurrentCLO = l0.Data
  l0 = self.box_CLOController_10
  l0.CLO = self.CurrentCLO
  l0 = self.box_ListForEach_8
  l1 = self.box_CLOController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|625545607", "625545607", "Client_PickUp", "box_ListForEach_8.GotNext", "box_CLOController_10.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListForEach_8_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_8
  self.CurrentCLO = l0.Data
end
function export:f_box_ListForEach_8_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_8
  self.CurrentCLO = l0.Data
end
function export:f_box_Compare_Boolean_v2_20_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_25()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|694254636", "694254636", "Client_PickUp", "box_Compare_Boolean_v2_20.A_is_True", "box_3DGPSController_25.Disable", clone, l0)
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
  self:OnEnter_box_Proximity_Monitor_23()
  l0 = self.box_Proximity_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|271038700", "271038700", "Client_PickUp", "box_Compare_Boolean_v2_20.Out", "box_Proximity_Monitor_23.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Set_List_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.ClientsList_IDs = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1195737838"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_39_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_39_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1204860140", "1204860140", "Client_PickUp", "box_Set_List_15.Out", "box_Ordered_Output_39.In", clone, l0)
  l0:In()
end
function export:f_box_CameraRealign_74_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1246034516"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_1_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CameraRealign_74
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|765967578", "765967578", "Client_PickUp", "box_CameraRealign_74.Out", "box_Show_Or_Hide_All_UI_1.Show", l0, l1)
  l1:Show()
end
function export:f_box_Get_Player_ID_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_19
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|133827791", "133827791", "Client_PickUp", "box_Get_Player_ID_11.Out", "box_MissionMessageController_v3_19.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_CLOController_28_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_28
  self.tmpClient = l0.UserID
  self:OnEnter_box_MultipleOR_26()
  l1 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1831382757", "1831382757", "Client_PickUp", "box_CLOController_28.OnUserInPlace", "box_MultipleOR_26.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_80"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2031835144"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_80_Popped
  l0 = self.box_MissionMessageController_v3_4
  l1 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2139267742", "2139267742", "Client_PickUp", "box_MissionMessageController_v3_4.Out", "box_SetActionMap_v2_80.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  l0.PlayerEntity = nil
  l0._graph = self
  l0._name = "box_Force_Pawns_Vehicle_Stop_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1130582746"
  l0.Out = self.f_box_Force_Pawns_Vehicle_Stop_6_Out
  l0 = self.box_Timer_v2_5
  l1 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|59328136", "59328136", "Client_PickUp", "box_Timer_v2_5.TimeElapsed", "box_Force_Pawns_Vehicle_Stop_6.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_33_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CameraContextController_37()
  l0 = self.box_Timer_v2_33
  l1 = self.box_CameraContextController_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|646954485", "646954485", "Client_PickUp", "box_Timer_v2_33.TimeElapsed", "box_CameraContextController_37.StartContext", l0, l1)
  l1:StartContext()
end
function export:f_box_MissionMessageController_v3_19_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowGPS
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|433259852"
  l0.Out = self.f_box_Compare_Boolean_v2_36_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_36_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MissionMessageController_v3_19
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|743914764", "743914764", "Client_PickUp", "box_MissionMessageController_v3_19.Out", "box_Compare_Boolean_v2_36.In", l0, l1)
  l1:In()
end
function export:f_box_ListLength_32_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.RemainingClients = l0.Length
end
function export:f_box_ListLength_32_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.RemainingClients = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_41()
  l0 = self.box_MultipleOR_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|466493735", "466493735", "Client_PickUp", "box_ListLength_32.NotEmpty", "box_MultipleOR_41.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ListLength_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.RemainingClients = l0.Length
end
function export:f_box_MapPointController_v3_35_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1703788547"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_18_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_MapPointController_v3_35
  l1 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|377527176", "377527176", "Client_PickUp", "box_MapPointController_v3_35.Hidden", "box_SetActionMap_v2_18.Push", l0, l1)
  l1:Push()
end
function export:f_box_Force_Pawns_Vehicle_Stop_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Pickup Test ", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Ordered Output')-- Comment: Pickup Test ")
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1639398642"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1000377596", "1000377596", "Client_PickUp", "box_Force_Pawns_Vehicle_Stop_6.Out", "box_Ordered_Output_46.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_10_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_10
  self.CurrentClient = l0.UserID
  l0 = self.box_ListWriter_13
  l0.Input = self.tmp_ClientsList_IDs
  l0.Data[0] = self.CurrentClient
  l0 = self.box_CLOController_10
  l1 = self.box_ListWriter_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1677934542", "1677934542", "Client_PickUp", "box_CLOController_10.OnUserInPlace", "box_ListWriter_13.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_39_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_27
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|844365947", "844365947", "Client_PickUp", "box_Ordered_Output_39.Out", "box_Timer_v2_27.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_39_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1247111704", "1247111704", "Client_PickUp", "box_Ordered_Output_39.Out", "Spawned", clone, self)
  self:Spawned()
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowGPS
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|677763959"
  l0.Out = self.f_box_Compare_Boolean_v2_20_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_20_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_14
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1409686267", "1409686267", "Client_PickUp", "box_MultipleOR_14.Out", "box_Compare_Boolean_v2_20.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_40_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = self.RemainingClients
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1692740838"
  l0.Out = self.f_box_Integer_Arithmetics_17_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2007375599", "2007375599", "Client_PickUp", "box_Ordered_Output_40.Out", "box_Integer_Arithmetics_17.Sub", clone, l0)
  l0:Sub()
end
function export:f_box_Ordered_Output_40_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_41()
  l0 = self.box_MultipleOR_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1765467511", "1765467511", "Client_PickUp", "box_Ordered_Output_40.Out", "box_MultipleOR_41.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Show_Or_Hide_All_UI_1_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_4
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|769110471", "769110471", "Client_PickUp", "box_Show_Or_Hide_All_UI_1.Shown", "box_MissionMessageController_v3_4.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_Set_Entity_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.tmpClient = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|464046351", "464046351", "Client_PickUp", "box_Set_Entity_34.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_OnceOnly_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_33
  l0.Seconds = 0.7
  l0 = self.box_OnceOnly_v3_2
  l1 = self.box_Timer_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2133236784", "2133236784", "Client_PickUp", "box_OnceOnly_v3_2.Out", "box_Timer_v2_33.Start", l0, l1)
  l1:Start()
end
function export:f_box_Show_Or_Hide_All_UI_42_Hidden()
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
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = self.ClientsList_CLOs
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|366696590"
  l0.Is_nil = self.f_box_Test_if_Nil_7_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_7_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1237956503", "1237956503", "Client_PickUp", "box_Show_Or_Hide_All_UI_42.Hidden", "box_Test_if_Nil_7.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1248768230", "1248768230", "Client_PickUp", "box_Ordered_Output_22.Out", "Disabled", clone, self)
  self:Disabled()
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1538170967", "1538170967", "Client_PickUp", "box_Ordered_Output_22.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CameraContextController_71_ContextStopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_CameraContextController_71
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2079841442", "2079841442", "Client_PickUp", "box_CameraContextController_71.ContextStopped", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_26_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.tmpClient
  l0._graph = self
  l0._name = "box_Set_Entity_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|400043600"
  l0.Out = self.f_box_Set_Entity_29_Out
  l0 = self.box_MultipleOR_26
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1546256337", "1546256337", "Client_PickUp", "box_MultipleOR_26.Out", "box_Set_Entity_29.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|332712380"
  l0.Out = self.f_box_Simple_Node_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1985363454", "1985363454", "Client_PickUp", "box_Ordered_Output_46.Out", "box_Simple_Node_3.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Set_Domino_Camera_Reference_68
  l0.Slot = 1
  l0.ReferenceEntity = self.PlayerEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1933921641", "1933921641", "Client_PickUp", "box_Ordered_Output_46.Out", "box_Set_Domino_Camera_Reference_68.In", clone, l0)
  l0:In()
end
function export:f_box_Integer_Arithmetics_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.RemainingClients = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.RemainingClients
  l0.B = 0
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|207585296"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_21_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1274197285", "1274197285", "Client_PickUp", "box_Integer_Arithmetics_17.Out", "box_Compare_Integers_v2_21.In", clone, l0)
  l0:In()
end
function export:f_box_SetActionMap_v2_18_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_5
  l0.Seconds = 0.4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1895599640", "1895599640", "Client_PickUp", "box_SetActionMap_v2_18.Pushed", "box_Timer_v2_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_41_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_8
  l0.List = self.ClientsList_CLOs
  l0 = self.box_MultipleOR_41
  l1 = self.box_ListForEach_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1344781922", "1344781922", "Client_PickUp", "box_MultipleOR_41.Out", "box_ListForEach_8.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_ListWriter_13_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_13
  self.tmp_ClientsList_IDs = l0.Target
  l0 = self.box_VehicleSeatingController_16
  l0.Vehicle = self.VehiclePlayer
  l0.Pawn = self.CurrentClient
  l0.UseAnimation = 1
  l0.CanUseBackSeat = 1
  l0 = self.box_ListWriter_13
  l1 = self.box_VehicleSeatingController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2001127992", "2001127992", "Client_PickUp", "box_ListWriter_13.Added", "box_VehicleSeatingController_16.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_ListWriter_13_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_13
  self.tmp_ClientsList_IDs = l0.Target
end
function export:f_box_ListWriter_13_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_13
  self.tmp_ClientsList_IDs = l0.Target
end
function export:f_box_Timer_v2_27_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CameraContextController_37()
  l0 = self.box_Timer_v2_27
  l1 = self.box_CameraContextController_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1832086781", "1832086781", "Client_PickUp", "box_Timer_v2_27.TimeElapsed", "box_CameraContextController_37.StopContext", l0, l1)
  l1:StopContext()
end
function export:f_box_Ordered_Output_30_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2139628151", "2139628151", "Client_PickUp", "box_Ordered_Output_30.Out", "Spawned", clone, self)
  self:Spawned()
end
function export:f_box_Ordered_Output_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_77
  l0.Vehicle = self.VehiclePlayer
  l0.Pawn = self.tmpClient
  l0.UseAnimation = 1
  l0.CanUseBackSeat = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|945232112", "945232112", "Client_PickUp", "box_Ordered_Output_30.Out", "box_VehicleSeatingController_77.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Timer_v2_84_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CameraContextController_71()
  l0 = self.box_Timer_v2_84
  l1 = self.box_CameraContextController_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|2021612206", "2021612206", "Client_PickUp", "box_Timer_v2_84.TimeElapsed", "box_CameraContextController_71.StopContext", l0, l1)
  l1:StopContext()
end
function export:f_box_CameraContextController_69_ContextStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_42"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1296645816"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_42_Hidden
  l0 = self.box_CameraContextController_69
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|913027928", "913027928", "Client_PickUp", "box_CameraContextController_69.ContextStarted", "box_Show_Or_Hide_All_UI_42.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_SetActionMap_v2_80_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|740025360", "740025360", "Client_PickUp", "box_SetActionMap_v2_80.Popped", "PickedUp", clone, self)
  self:PickedUp()
end
function export:f_box_VehicleSeatingController_77_AbortMoveAndUseSeat()
  local l0
  self = self._graph
  l0 = self.box_VehicleSeatingController_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1210056124", "1210056124", "Client_PickUp", "box_VehicleSeatingController_77.AbortMoveAndUseSeat", "FailedMoveAndAssign", l0, self)
  self:FailedMoveAndAssign()
end
function export:f_box_VehicleSeatingController_77_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_84
  l0.Seconds = 1
  l0 = self.box_VehicleSeatingController_77
  l1 = self.box_Timer_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1570754445", "1570754445", "Client_PickUp", "box_VehicleSeatingController_77.AssignCompleted", "box_Timer_v2_84.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleSeatingController_77_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_70
  l0.Seconds = 0.7
  l0 = self.box_VehicleSeatingController_77
  l1 = self.box_Timer_v2_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|1681514685", "1681514685", "Client_PickUp", "box_VehicleSeatingController_77.Assigned", "box_Timer_v2_70.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_Proximity_Monitor_23()
  local l0
  l0 = self.box_Proximity_Monitor_23
  l0.Entity1 = self.VehiclePlayer
  l0.Entity2 = self.IconPickUp
  l0.Radius = self.Range
  l0.CheckNow = 1
end
function export:OnEnter_box_CameraContextController_37()
  local l0
  l0 = self.box_CameraContextController_37
  l0.Config = "CameraContext.9223372048779319939"
  l0.BlendIn = "CameraBlendListDB.9223372048779319841"
  l0.BlendOut = "CameraBlendListDB.9223372048779319827"
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_3DGPSController_25()
  local l0
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = self.IconPickUp
  l0.Path = nil
  l0.Index = nil
  l0.PathType = nil
  l0._graph = self
  l0._name = "box_3DGPSController_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Client_PickUp|788738142"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_MapPointController_v3_35()
  local l0
  l0 = self.box_MapPointController_v3_35
  l0.MapPoint = self.IconPickUp
  l0.LocText = self.LocText
  l0.LocMapMarkerTitle = self.LocText
end
function export:OnEnter_box_MultipleOR_14()
end
function export:OnEnter_box_CameraContextController_71()
  local l0
  l0 = self.box_CameraContextController_71
  l0.Config = "CameraContext.9223372048779319939"
  l0.BlendIn = "CameraBlendListDB.9223372048779319841"
  l0.BlendOut = "CameraBlendListDB.9223372048779319827"
end
function export:OnEnter_box_MultipleOR_26()
end
function export:OnEnter_box_MultipleOR_41()
end
function export:PickedUp()
end
function export:Enabled()
end
function export:Disabled()
end
function export:Spawned()
end
function export:FailedMoveAndAssign()
end
_compilerVersion = 4
