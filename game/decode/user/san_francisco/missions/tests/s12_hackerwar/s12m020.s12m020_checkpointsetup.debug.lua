export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S12M020_CheckPointSetup"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup"
  self.Out = DummyFunction
  self.EnemyEntity = nil
  self.EnemyCar = nil
  self.PlayerCar = nil
  self.PlayerEntity = nil
  self.MapIcon = nil
  self.box_Multiple_AND_19 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_19
  l0._graph = self
  l0._name = "box_Multiple_AND_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|81856605"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_19_Out
  self.box_VehicleBhvController_14 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_14
  l0._graph = self
  l0._name = "box_VehicleBhvController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|156219361"
  l0.StartCompleted = self.f_box_VehicleBhvController_14_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_MapPointController_v3_4 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_4
  l0._graph = self
  l0._name = "box_MapPointController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|285848844"
  l0.Shown = self.f_box_MapPointController_v3_4_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_VehicleSeatingController_13 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_13
  l0._graph = self
  l0._name = "box_VehicleSeatingController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|324061990"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_13_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_SnapAndBind_1 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_1
  l0._graph = self
  l0._name = "box_SnapAndBind_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|405333102"
  l0.Attached = self.f_box_SnapAndBind_1_Attached
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1007951454"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1038715657"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_6_OnUserInPlace
  self.box_VehicleSeatingController_18 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_18
  l0._graph = self
  l0._name = "box_VehicleSeatingController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1269200290"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_18_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_15 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_15
  l0._graph = self
  l0._name = "box_CLOController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1366393238"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_15_OnUserInPlace
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1515444740"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
  self.box_MissionMessageController_16 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_16
  l0._graph = self
  l0._name = "box_MissionMessageController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1521817686"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_16_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
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
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372046120119435"
  l0._graph = self
  l0._name = "box_Set_Entity_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|310667411"
  l0.Out = self.f_box_Set_Entity_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1008960493", "1008960493", "S12M020_CheckPointSetup", "In", "box_Set_Entity_10.FromEntity", self, l0)
  l0:FromEntity()
end
function export:f_box_Multiple_AND_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_13
  l0.Vehicle = self.EnemyCar
  l0.Pawn = self.EnemyEntity
  l0.Seat = "Driver"
  l0 = self.box_Multiple_AND_19
  l1 = self.box_VehicleSeatingController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1170185127", "1170185127", "S12M020_CheckPointSetup", "box_Multiple_AND_19.Out", "box_VehicleSeatingController_13.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Get_Player_ID_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1687916060"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_7_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|559625684", "559625684", "S12M020_CheckPointSetup", "box_Get_Player_ID_8.Out", "box_Ordered_Output_7.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleBhvController_14_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_1
  l0.Parent = self.EnemyEntity
  l0.Child = self.MapIcon
  l0.CarIcon = 1
  l0 = self.box_VehicleBhvController_14
  l1 = self.box_SnapAndBind_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1754347131", "1754347131", "S12M020_CheckPointSetup", "box_VehicleBhvController_14.StartCompleted", "box_SnapAndBind_1.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_MapPointController_v3_4_Shown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.EnemyEntity
  l0._graph = self
  l0._name = "box_Set_Entity_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1721893572"
  l0.Out = self.f_box_Set_Entity_17_Out
  l0 = self.box_MapPointController_v3_4
  l1 = Boxes[PathID("domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1158535106", "1158535106", "S12M020_CheckPointSetup", "box_MapPointController_v3_4.Shown", "box_Set_Entity_17.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_Compare_Boolean_v2_5_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1778479382", "1778479382", "S12M020_CheckPointSetup", "box_Compare_Boolean_v2_5.A_is_False", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_5_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_18
  l0.Vehicle = self.PlayerCar
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|541275392", "541275392", "S12M020_CheckPointSetup", "box_Compare_Boolean_v2_5.A_is_True", "box_VehicleSeatingController_18.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Set_Entity_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.MapIcon = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|90637761"
  l0.Out = self.f_box_Get_Player_ID_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1804726969", "1804726969", "S12M020_CheckPointSetup", "box_Set_Entity_10.Out", "box_Get_Player_ID_8.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleSeatingController_13_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isPlayerDriving
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|303892955"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_5_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_5_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_VehicleSeatingController_13
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1264283295", "1264283295", "S12M020_CheckPointSetup", "box_VehicleSeatingController_13.AssignCompleted", "box_Compare_Boolean_v2_5.In", l0, l1)
  l1:In()
end
function export:f_box_SnapAndBind_1_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_16
  l0.MissionName = "MissionList.9223372046120059670"
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0 = self.box_SnapAndBind_1
  l1 = self.box_MissionMessageController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1668877144", "1668877144", "S12M020_CheckPointSetup", "box_SnapAndBind_1.Attached", "box_MissionMessageController_16.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Set_Entity_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.EnemyCarID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.PlayerCar
  l0._graph = self
  l0._name = "box_Set_Entity_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1127076681"
  l0.Out = self.f_box_Set_Entity_20_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1671722515", "1671722515", "S12M020_CheckPointSetup", "box_Set_Entity_12.Out", "box_Set_Entity_20.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_14
  l0.VehicleMaster = self.EnemyCar
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = self.RacePath
  l0.Config = "VehicleBhvSetup.9223372048779328405"
  l0 = self.box_MultipleOR_2
  l1 = self.box_VehicleBhvController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1031793395", "1031793395", "S12M020_CheckPointSetup", "box_MultipleOR_2.Out", "box_VehicleBhvController_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_6_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  self.EnemyEntity = l0.UserID
  self:OnEnter_box_Multiple_AND_19()
  l1 = self.box_Multiple_AND_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|976606638", "976606638", "S12M020_CheckPointSetup", "box_CLOController_6.OnUserInPlace", "box_Multiple_AND_19.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Set_Entity_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.PlayerCarID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1959276009", "1959276009", "S12M020_CheckPointSetup", "box_Set_Entity_20.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_VehicleSeatingController_18_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_VehicleSeatingController_18
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1408533059", "1408533059", "S12M020_CheckPointSetup", "box_VehicleSeatingController_18.AssignCompleted", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_15_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_15
  self.EnemyCar = l0.UserID
  self:OnEnter_box_Multiple_AND_19()
  l1 = self.box_Multiple_AND_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1341275117", "1341275117", "S12M020_CheckPointSetup", "box_CLOController_15.OnUserInPlace", "box_Multiple_AND_19.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.PlayerCar = l0.UserID
  self:OnEnter_box_Multiple_AND_19()
  l1 = self.box_Multiple_AND_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|909076770", "909076770", "S12M020_CheckPointSetup", "box_CLOController_3.OnUserInPlace", "box_Multiple_AND_19.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_MissionMessageController_16_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_4
  l0.MapPoint = self.MapIcon
  l0 = self.box_MissionMessageController_16
  l1 = self.box_MapPointController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|330155865", "330155865", "S12M020_CheckPointSetup", "box_MissionMessageController_16.MessageRequested", "box_MapPointController_v3_4.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_6
  l0.CLO = self.EnemyEntityCLO
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1440461789", "1440461789", "S12M020_CheckPointSetup", "box_Ordered_Output_7.Out", "box_CLOController_6.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_15
  l0.CLO = self.EnemyCarCLO
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|766568549", "766568549", "S12M020_CheckPointSetup", "box_Ordered_Output_7.Out", "box_CLOController_15.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_7_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_3
  l0.CLO = self.PlayerCarCLO
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|1845435458", "1845435458", "S12M020_CheckPointSetup", "box_Ordered_Output_7.Out", "box_CLOController_3.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Set_Entity_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.EnemyEntityID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.EnemyCar
  l0._graph = self
  l0._name = "box_Set_Entity_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|720784540"
  l0.Out = self.f_box_Set_Entity_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_CheckPointSetup|2065640004", "2065640004", "S12M020_CheckPointSetup", "box_Set_Entity_17.Out", "box_Set_Entity_12.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:OnEnter_box_Multiple_AND_19()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:Out()
end
_compilerVersion = 4
