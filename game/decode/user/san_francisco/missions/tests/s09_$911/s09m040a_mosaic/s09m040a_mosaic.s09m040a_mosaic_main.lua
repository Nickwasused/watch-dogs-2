export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self.Player = nil
  self.car1 = nil
  self.car2 = nil
  self.car3 = nil
  self.bratva1 = nil
  self.bratva2 = nil
  self.bratva3 = nil
  self[4] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_4_OnUserInPlace
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_5_OnUserInPlace
  self[16] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[16]
  l0._graph = self
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[9] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_9_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_10_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[3] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
  self[11] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_11_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_13_Out
  self[6] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_6_OnUserInPlace
  self[7] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_7_OnUserInPlace
  self[8] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_8_OnUserInPlace
  self[15] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[15]
  l0._graph = self
  l0.StartCompleted = self.f_15_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[14] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[14]
  l0._graph = self
  l0.StartCompleted = self.f_14_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
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
  l0.LayerName = "S09_M040a_Main"
  l0:Load()
end
function export:f_4_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[4]
  self.car2 = l0.UserID
  l0 = self[5]
  l0.CLO = "9223372055904525152"
  l0:Activate()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Vehicle = self.car1
  l0.Pawn = self.bratva1
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Vehicle = self.car2
  l0.Pawn = self.bratva2
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_12_Out_2()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Vehicle = self.car3
  l0.Pawn = self.bratva3
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_5_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[5]
  self.car3 = l0.UserID
  l0 = self[6]
  l0.CLO = "9223372055904525130"
  l0:Activate()
end
function export:f_9_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(0)
end
function export:f_10_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(1)
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.car1 = l0.UserID
  l0 = self[4]
  l0.CLO = "9223372055904525143"
  l0:Activate()
end
function export:f_11_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(2)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  l0 = self[3]
  l0.CLO = "9223372055904525133"
  l0:Activate()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.VehicleMaster = self.car1
  l0.VehicleTarget = self.Player
  l0.PathOrPos = "9223372060257381898"
  l0.Config = "VehicleBhvSetup.9223372044303652121"
  l0:Start()
end
function export:f_6_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[6]
  self.bratva1 = l0.UserID
  l0 = self[7]
  l0.CLO = "9223372055904525129"
  l0:Activate()
end
function export:f_7_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[7]
  self.bratva2 = l0.UserID
  l0 = self[8]
  l0.CLO = "9223372055904525132"
  l0:Activate()
end
function export:f_8_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[8]
  self.bratva3 = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0.Out[2] = self.f_12_Out_2
  l0:In()
end
function export:f_15_StartCompleted()
  local l0
  self = self._graph
  l0 = self[16]
  l0.VehicleMaster = self.car3
  l0.VehicleTarget = self.Player
  l0.PathOrPos = "9223372060257381902"
  l0.Config = "VehicleBhvSetup.9223372044303652121"
  l0:Start()
end
function export:f_14_StartCompleted()
  local l0
  self = self._graph
  l0 = self[15]
  l0.VehicleMaster = self.car2
  l0.VehicleTarget = self.Player
  l0.PathOrPos = "9223372060257381900"
  l0.Config = "VehicleBhvSetup.9223372044303652121"
  l0:Start()
end
_compilerVersion = 4
