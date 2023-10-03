export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HelicopterBhvController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/Lists/SetList.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self.Out_CarReadyToAdopt = DummyFunction
  self.Out_FirstWaveSpawned = DummyFunction
  self.Out_SecondWaveSpawned = DummyFunction
  self.Chopper = nil
  self.Chopper_Pilot = nil
  self.Chopper_Sniper = nil
  self.PoliceCar_C = nil
  self.Policeman_A01 = nil
  self.PoliceCar_B = nil
  self.Policeman_B01 = nil
  self.Policeman_B02 = nil
  self.Policeman_C01 = nil
  self.Policeman_A02 = nil
  self.PoliceCar_A = nil
  self.Policeman_C02 = nil
  self.PlayerEntity = nil
  self.AI_spawned = {}
  self.Vehicle_Spawned = {}
  self.chopper_and_AIs = {}
  self.AgentListWave2 = {}
  self.AgentList = {}
  self.Is_Scripted_Chopper = 0
  self.PoliceCar_D = nil
  self.Policeman_D01 = nil
  self.PoliceCar_E = nil
  self.Policeman_E01 = nil
  self.PoliceCar_F = nil
  self.Policeman_F01 = nil
  self.PoliceCar_G = nil
  self.Policeman_G01 = nil
  self.PoliceCar_H = nil
  self.Policeman_H01 = nil
  self.Fake_Target = nil
  self.UsersToUnspawn = {}
  self[125] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[125]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_125_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[24] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[24]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_24_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[2] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_2_OnUserInPlace
  self[61] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_61_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[43] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[43]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_43_Out
  self[113] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[113]
  l0._graph = self
  l0.StartCompleted = self.f_113_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[70] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[70]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_70_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_10_OnUserInPlace
  self[68] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_68_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[81] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[81]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_81_OnUserInPlace
  self[108] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[108]
  l0._graph = self
  l0.StartCompleted = self.f_108_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[28] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[28]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_28_Out
  self[26] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_26_Out
  self[7] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_7_OnUserInPlace
  self[76] = cbox:CreateBox("domino/System/HelicopterBhvController.lua")
  l0 = self[76]
  l0._graph = self
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  self[27] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[27]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_27_OnUserInPlace
  self[115] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[115]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_115_Executed
  self[79] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[79]
  l0._graph = self
  l0.StartCompleted = self.f_79_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[96] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[96]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_96_OnUserInPlace
  self[84] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[84]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_84_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[57] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[57]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_57_OnUserInPlace
  self[47] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[47]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_47_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[126] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[126]
  l0._graph = self
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_126_Added
  l0.Removed = self.f_126_Removed
  l0.Out = self.f_126_Out
  self[82] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[82]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_82_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[46] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[46]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_46_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[34] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[34]
  l0._graph = self
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_34_Added
  l0.Removed = self.f_34_Removed
  l0.Out = self.f_34_Out
  self[48] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[48]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_48_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[77] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[77]
  l0._graph = self
  l0.StartCompleted = self.f_77_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[91] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[91]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_91_Out
  self[99] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[99]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_99_OnUserInPlace
  self[71] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[71]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_71_OnUserInPlace
  self[85] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[85]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_85_Out
  self[80] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[80]
  l0._graph = self
  l0.StartCompleted = self.f_80_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[73] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[78] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[78]
  l0._graph = self
  l0.StartCompleted = self.f_78_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[95] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[95]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_95_OnUserInPlace
  self[118] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[118]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_118_OnUserInPlace
  self[100] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[100]
  l0._graph = self
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_100_Added
  l0.Removed = self.f_100_Removed
  l0.Out = self.f_100_Out
  self[114] = cbox:CreateBox("domino/System/HelicopterBhvController.lua")
  l0 = self[114]
  l0._graph = self
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_6_Out
  self[117] = cbox:CreateBox("domino/System/HelicopterBhvController.lua")
  l0 = self[117]
  l0._graph = self
  l0.StartCompleted = self.f_117_StartCompleted
  l0.StopCompleted = DummyFunction
  self[40] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = self.f_40_Out
  l0.SetTrue = self.f_40_SetTrue
  l0.SetFalse = self.f_40_SetFalse
  l0.Toggled = self.f_40_Toggled
  l0.SetFromBool = self.f_40_SetFromBool
  self[12] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_12_Out
  self[38] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_38_Out
  self[22] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_22_OnUserInPlace
  self[69] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[69]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_69_Out
  self[42] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = self.f_42_Out
  l0.SetTrue = self.f_42_SetTrue
  l0.SetFalse = self.f_42_SetFalse
  l0.Toggled = self.f_42_Toggled
  l0.SetFromBool = self.f_42_SetFromBool
  self[67] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[67]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_67_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[39] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[39]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_39_Added
  l0.Removed = self.f_39_Removed
  l0.Out = self.f_39_Out
  self[11] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_11_OnUserInPlace
  self[14] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_14_OnUserInPlace
  self[13] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_13_Out
  self[101] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[101]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_101_Out
  self[36] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_36_Out
  self[21] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[21]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_21_OnUserInPlace
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In_StartCars()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_50_Out_0
  l0.Out[1] = self.f_50_Out_1
  l0.Out[2] = self.f_50_Out_2
  l0.Out[3] = self.f_50_Out_3
  l0.Out[4] = self.f_50_Out_4
  l0:In()
end
function export:Launch_SecondWave()
  local l0
  l0 = self[118]
  l0.CLO = "9223372054453232000"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:Spawn_FirstWave()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0:In()
end
function export:Spawn_Second_Wave()
  local l0
  l0 = self[126]
  l0.Input = self.UsersToUnspawn
  l0.Data[0] = self.Policeman_C01
  l0.Data[1] = self.PoliceCar_C
  l0.Data[2] = self.PoliceCar_D
  l0.Data[3] = self.Policeman_D01
  l0.Data[4] = self.PoliceCar_A
  l0.Data[5] = self.Policeman_A01
  l0.Data[6] = self.PoliceCar_B
  l0.Data[7] = self.Policeman_B01
  l0:Add()
end
function export:f_125_UnspawnedUser()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_24_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[117]
  l0.Helicopter = self.Chopper
  l0.Target = self.PlayerEntity
  l0.PathOrPos = "9223372053779917560"
  l0.Config = "HelicopterBhvSetup.9223372048779322177"
  l0:Start()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052446995766"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
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
  l0.Out = self.f_65_Out
  l0:In()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_45_Out
  l0:In()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = self[2]
  l0.CLO = "9223372051315719623"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = self[22]
  l0.CLO = "9223372051315719625"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0.CLO = "9223372051315719626"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = self[27]
  l0.CLO = "9223372051315719627"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_2_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[2]
  self.PoliceCar_C = l0.UserID
  l0 = self[28]
  l0:Condition(0)
end
function export:f_61_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[79]
  l0.VehicleMaster = self.PoliceCar_A
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372052446994768"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0:Start()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053677910354"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
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
  l0.Out = self.f_106_Out
  l0:In()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.IN_ScriptedChopper
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_41_Is_nil
  l0.Is_not_nil = self.f_41_Is_not_nil
  l0:In()
end
function export:f_112_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052446995764"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
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
  l0.Out = self.f_64_Out
  l0:In()
end
function export:f_113_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_G
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_102_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.AgentListWave2_OUT = l0.Target
  self:Out_SecondWaveSpawned()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0.Out[2] = self.f_20_Out_2
  l0.Out[3] = self.f_20_Out_3
  l0.Out[4] = self.f_20_Out_4
  l0.Out[5] = DummyFunction
  l0:In()
end
function export:f_70_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(3)
end
function export:f_10_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[10]
  self.Policeman_A01 = l0.UserID
  l0 = self[26]
  l0:Condition(1)
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(1)
end
function export:f_68_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[77]
  l0.VehicleMaster = self.PoliceCar_C
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372052446994770"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0:Start()
end
function export:f_81_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[81]
  self.Policeman_F01 = l0.UserID
  l0 = self[91]
  l0:Condition(1)
end
function export:f_108_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_F
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Vehicle = self.PoliceCar_C
  l0.Pawn = self.Policeman_C01
  l0:Assign()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Vehicle = self.PoliceCar_A
  l0.Pawn = self.Policeman_A01
  l0:Assign()
end
function export:f_7_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[7]
  self.PoliceCar_B = l0.UserID
  l0 = self[6]
  l0:Condition(0)
end
function export:f_41_Is_nil()
  local l0
  self = self._graph
  l0 = self[40]
  l0:False()
end
function export:f_41_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Bool = self.IN_ScriptedChopper
  l0:FromBool()
end
function export:f_27_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[27]
  self.Policeman_B01 = l0.UserID
  l0 = self[6]
  l0:Condition(1)
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_15_Out_0
  l0.Out[1] = self.f_15_Out_1
  l0:In()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_83_Out_0
  l0.Out[1] = self.f_83_Out_1
  l0:In()
end
function export:f_115_Executed()
  local l0
  self = self._graph
  l0 = self[114]
  l0.Helicopter = self.Chopper
  l0.Target = self.PlayerEntity
  l0.PathOrPos = "9223372053779917555"
  l0.Config = "HelicopterBhvSetup.9223372048779322177"
  l0:Start()
end
function export:f_79_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_A
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_96_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[96]
  self.Policeman_G01 = l0.UserID
  l0 = self[85]
  l0:Condition(1)
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = self[14]
  l0.CLO = "9223372051248723126"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0.CLO = "9223372051248723127"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_84_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Condition(0)
end
function export:f_57_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[57]
  self.PoliceCar_D = l0.UserID
  l0 = self[69]
  l0:Condition(0)
end
function export:f_47_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(1)
end
function export:f_126_Added()
  local l0
  self = self._graph
  l0 = self[126]
  self.UsersToUnspawn = l0.Target
  l0 = self[125]
  l0.UserList = self.UsersToUnspawn
  l0:UnspawnUser()
end
function export:f_126_Out()
  local l0
  self = self._graph
  l0 = self[126]
  self.UsersToUnspawn = l0.Target
end
function export:f_126_Removed()
  local l0
  self = self._graph
  l0 = self[126]
  self.UsersToUnspawn = l0.Target
end
function export:f_82_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Condition(1)
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_Scripted_Chopper
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_37_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_25_Out_0
  l0.Out[1] = self.f_25_Out_1
  l0:In()
end
function export:f_20_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_20_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_20_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_59_Out_0
  l0.Out[1] = self.f_59_Out_1
  l0:In()
end
function export:f_46_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(0)
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052446995768"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
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
  l0.Out = self.f_66_Out
  l0:In()
end
function export:f_34_Added()
  local l0
  self = self._graph
  l0 = self[34]
  self.AgentList = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_Scripted_Chopper
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_4_A_is_True
  l0.A_is_False = self.f_4_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = self[34]
  self.AgentList = l0.Target
end
function export:f_34_Removed()
  local l0
  self = self._graph
  l0 = self[34]
  self.AgentList = l0.Target
end
function export:f_50_Out_0()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Seconds = 2.6
  l0:Start()
end
function export:f_50_Out_1()
  local l0
  self = self._graph
  l0 = self[67]
  l0.Seconds = 2.8
  l0:Start()
end
function export:f_50_Out_2()
  local l0
  self = self._graph
  l0 = self[68]
  l0.Seconds = 3.4
  l0:Start()
end
function export:f_50_Out_3()
  local l0
  self = self._graph
  l0 = self[73]
  l0.Seconds = 2
  l0:Start()
end
function export:f_50_Out_4()
  local l0
  self = self._graph
  l0 = self[76]
  l0.Helicopter = self.Chopper
  l0.Target = self.PlayerEntity
  l0.PathOrPos = "9223372053779917555"
  l0.Config = "HelicopterBhvSetup.9223372048779322177"
  l0:Start()
end
function export:f_48_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(2)
end
function export:f_77_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_C
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_91_Out()
  local l0
  self = self._graph
  l0 = self[84]
  l0.Vehicle = self.PoliceCar_F
  l0.Pawn = self.Policeman_F01
  l0:Assign()
end
function export:f_99_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[99]
  self.PoliceCar_F = l0.UserID
  l0 = self[91]
  l0:Condition(0)
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052593107701"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
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
  l0.Out = self.f_58_Out
  l0:In()
end
function export:f_71_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[71]
  self.Policeman_D01 = l0.UserID
  l0 = self[69]
  l0:Condition(1)
end
function export:f_85_Out()
  local l0
  self = self._graph
  l0 = self[82]
  l0.Vehicle = self.PoliceCar_G
  l0.Pawn = self.Policeman_G01
  l0:Assign()
end
function export:f_83_Out_0()
  local l0
  self = self._graph
  l0 = self[95]
  l0.CLO = "9223372053677910347"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_83_Out_1()
  local l0
  self = self._graph
  l0 = self[96]
  l0.CLO = "9223372051315719624"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_80_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_D
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_73_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[80]
  l0.VehicleMaster = self.PoliceCar_D
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372052593107703"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0:Start()
end
function export:f_78_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_B
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_95_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[95]
  self.PoliceCar_G = l0.UserID
  l0 = self[85]
  l0:Condition(0)
end
function export:f_15_Out_0()
  local l0
  self = self._graph
  l0 = self[99]
  l0.CLO = "9223372053677910344"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_15_Out_1()
  local l0
  self = self._graph
  l0 = self[81]
  l0.CLO = "9223372053677910345"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_59_Out_0()
  local l0
  self = self._graph
  l0 = self[57]
  l0.CLO = "9223372052528284169"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_59_Out_1()
  local l0
  self = self._graph
  l0 = self[71]
  l0.CLO = "9223372051315719628"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_118_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[118]
  self.Fake_Target = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_109_Out_1
  l0.Out[2] = self.f_109_Out_2
  l0.Out[3] = DummyFunction
  l0:In()
end
function export:f_100_Added()
  local l0
  self = self._graph
  l0 = self[100]
  self.AgentListWave2 = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.AgentListWave2
  l0._graph = self
  l0.Out = self.f_102_Out
  l0:FromList()
end
function export:f_100_Out()
  local l0
  self = self._graph
  l0 = self[100]
  self.AgentListWave2 = l0.Target
end
function export:f_100_Removed()
  local l0
  self = self._graph
  l0 = self[100]
  self.AgentListWave2 = l0.Target
end
function export:f_116_Out_0()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Condition(0)
end
function export:f_116_Out_1()
  local l0
  self = self._graph
  l0 = self[115]
  l0.Command = "testchopper"
  l0:Enable()
end
function export:f_37_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.AgentListWave1_OUT = l0.Target
  self:Out_FirstWaveSpawned()
end
function export:f_4_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_44_Out
  l0:In()
end
function export:f_4_A_is_True()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Condition(1)
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Vehicle = self.PoliceCar_B
  l0.Pawn = self.Policeman_B01
  l0:Assign()
end
function export:f_117_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_116_Out_0
  l0.Out[1] = self.f_116_Out_1
  l0:In()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[40]
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_40_SetFalse()
  local l0
  self = self._graph
  l0 = self[40]
  self.Is_Scripted_Chopper = l0.Target
  l0 = self[43]
  l0:Input(0)
end
function export:f_40_SetFromBool()
  local l0
  self = self._graph
  l0 = self[40]
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_40_SetTrue()
  local l0
  self = self._graph
  l0 = self[40]
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_40_Toggled()
  local l0
  self = self._graph
  l0 = self[40]
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Vehicle = self.Chopper
  l0.Pawn = self.Chopper_Pilot
  l0:Assign()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.AgentList
  l0._graph = self
  l0.Out = self.f_35_Out
  l0:FromList()
end
function export:f_22_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[22]
  self.Policeman_C01 = l0.UserID
  l0 = self[28]
  l0:Condition(1)
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Vehicle = self.PoliceCar_D
  l0.Pawn = self.Policeman_D01
  l0:Assign()
end
function export:f_106_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053677910350"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
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
  l0.Out = self.f_112_Out
  l0:In()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = self[42]
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_42_SetFalse()
  local l0
  self = self._graph
  l0 = self[42]
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_42_SetFromBool()
  local l0
  self = self._graph
  l0 = self[42]
  self.Is_Scripted_Chopper = l0.Target
  l0 = self[43]
  l0:Input(1)
end
function export:f_42_SetTrue()
  local l0
  self = self._graph
  l0 = self[42]
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_42_Toggled()
  local l0
  self = self._graph
  l0 = self[42]
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_67_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[78]
  l0.VehicleMaster = self.PoliceCar_B
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372052446994766"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0:Start()
end
function export:f_39_Added()
  local l0
  self = self._graph
  l0 = self[39]
  self.AgentList = l0.Target
  l0 = self[38]
  l0:Input(0)
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[39]
  self.AgentList = l0.Target
end
function export:f_39_Removed()
  local l0
  self = self._graph
  l0 = self[39]
  self.AgentList = l0.Target
end
function export:f_25_Out_0()
  local l0
  self = self._graph
  l0 = self[21]
  l0.CLO = "9223372051315719621"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  l0 = self[10]
  l0.CLO = "9223372051315719622"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_11_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[11]
  self.Chopper_Pilot = l0.UserID
  l0 = self[12]
  l0:Condition(1)
end
function export:f_14_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[14]
  self.Chopper = l0.UserID
  l0 = self[12]
  l0:Condition(0)
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Input = self.AgentList
  l0.Data[0] = self.PoliceCar_A
  l0.Data[1] = self.Policeman_A01
  l0.Data[2] = self.PoliceCar_B
  l0.Data[3] = self.Policeman_B01
  l0.Data[4] = self.PoliceCar_C
  l0.Data[5] = self.Policeman_C01
  l0.Data[6] = self.PoliceCar_D
  l0.Data[7] = self.Policeman_D01
  l0:Add()
end
function export:f_109_Out_1()
  local l0
  self = self._graph
  l0 = self[108]
  l0.VehicleMaster = self.PoliceCar_F
  l0.VehicleTarget = self.Fake_Target
  l0.PathOrPos = "9223372054284183192"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0.StopAtEndPoint = 1
  l0:Start()
end
function export:f_109_Out_2()
  local l0
  self = self._graph
  l0 = self[113]
  l0.VehicleMaster = self.PoliceCar_G
  l0.VehicleTarget = self.Fake_Target
  l0.PathOrPos = "9223372053677910352"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0.StopAtEndPoint = 1
  l0:Start()
end
function export:f_101_Out()
  local l0
  self = self._graph
  l0 = self[100]
  l0.Input = self.AgentListWave2
  l0.Data[0] = self.PoliceCar_E
  l0.Data[1] = self.Policeman_E01
  l0.Data[2] = self.PoliceCar_F
  l0.Data[3] = self.Policeman_F01
  l0.Data[4] = self.PoliceCar_G
  l0.Data[5] = self.Policeman_G01
  l0.Data[6] = self.PoliceCar_H
  l0.Data[7] = self.Policeman_H01
  l0:Add()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Input = self.AgentList
  l0.Data[0] = self.Chopper_Pilot
  l0.Data[1] = self.Chopper
  l0:Add()
end
function export:f_21_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[21]
  self.PoliceCar_A = l0.UserID
  l0 = self[26]
  l0:Condition(0)
end
function export:Out_CarReadyToAdopt()
end
function export:Out_FirstWaveSpawned()
end
function export:Out_SecondWaveSpawned()
end
_compilerVersion = 4
