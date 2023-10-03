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
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.EnemyEntity = nil
  self.EnemyCar = nil
  self.PlayerCar = nil
  self.PlayerEntity = nil
  self.MapIcon = nil
  self[19] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_19_Out
  self[14] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[14]
  l0._graph = self
  l0.StartCompleted = self.f_14_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Shown = self.f_4_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[13] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_13_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[1]
  l0._graph = self
  l0.Attached = self.f_1_Attached
  self[2] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[6] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_6_OnUserInPlace
  self[18] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_18_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[15] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_15_OnUserInPlace
  self[3] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
  self[16] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_16_MessageRequested
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
  l0.Out = self.f_10_Out
  l0:FromEntity()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Vehicle = self.EnemyCar
  l0.Pawn = self.EnemyEntity
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0.Out[2] = self.f_7_Out_2
  l0:In()
end
function export:f_14_StartCompleted()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Parent = self.EnemyEntity
  l0.Child = self.MapIcon
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_4_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.EnemyEntity
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:FromEntity()
end
function export:f_5_A_is_False()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(1)
end
function export:f_5_A_is_True()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Vehicle = self.PlayerCar
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.MapIcon = l0.Target
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_13_AssignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isPlayerDriving
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_5_A_is_True
  l0.A_is_False = self.f_5_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_1_Attached()
  local l0
  self = self._graph
  l0 = self[16]
  l0.MissionName = "MissionList.9223372046120059670"
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0:ShowNewObjective()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.EnemyCarID = l0.Target
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.PlayerCar
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:FromEntity()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.VehicleMaster = self.EnemyCar
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = self.RacePath
  l0.Config = "VehicleBhvSetup.9223372048779328405"
  l0:Start()
end
function export:f_6_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[6]
  self.EnemyEntity = l0.UserID
  l0 = self[19]
  l0:Condition(0)
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.PlayerCarID = l0.Target
  self:Out()
end
function export:f_18_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(0)
end
function export:f_15_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[15]
  self.EnemyCar = l0.UserID
  l0 = self[19]
  l0:Condition(1)
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.PlayerCar = l0.UserID
  l0 = self[19]
  l0:Condition(2)
end
function export:f_16_MessageRequested()
  local l0
  self = self._graph
  l0 = self[4]
  l0.MapPoint = self.MapIcon
  l0:Show()
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CLO = self.EnemyEntityCLO
  l0:Activate()
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  l0 = self[15]
  l0.CLO = self.EnemyCarCLO
  l0:Activate()
end
function export:f_7_Out_2()
  local l0
  self = self._graph
  l0 = self[3]
  l0.CLO = self.PlayerCarCLO
  l0:Activate()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.EnemyEntityID = l0.Target
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.EnemyCar
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:FromEntity()
end
function export:Out()
end
_compilerVersion = 4
