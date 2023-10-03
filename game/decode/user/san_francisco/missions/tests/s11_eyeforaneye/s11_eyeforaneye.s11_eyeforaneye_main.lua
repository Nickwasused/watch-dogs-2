export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Client_PickUp.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/HackableMonitor.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Player_VehicleMonitor.lua")
  cbox:RegisterBox("Domino/Library/singleplayer/taxi/Taxi_Missions.ReachDestination.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.PlayerVehicle = nil
  self.Miranda = nil
  self[9] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[9]
  l0._graph = self
  l0.Attached = self.f_9_Attached
  self[2] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[11] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
  self[5] = cbox:CreateBox("Domino/System/HackableMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_5_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackSuccess = self.f_5_HackSuccess
  l0.HackFailed = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[10] = cbox:CreateBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Client_PickUp.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_10_Disabled
  l0.Spawned = DummyFunction
  l0.PickedUp = self.f_10_PickedUp
  l0.FailedMoveAndAssign = DummyFunction
  self[4] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[4]
  l0._graph = self
  l0.Attached = self.f_4_Attached
  self[12] = cbox:CreateBox("Domino/Library/singleplayer/taxi/Taxi_Missions.ReachDestination.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.DestinationReached = self.f_12_DestinationReached
  self[7] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_7_OnUserInPlace
  self[6] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Shown = self.f_6_Shown
  l0.Hidden = self.f_6_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_8_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_8_Entered
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
  self[13] = cbox:CreateBox("Domino/Library/singleplayer/taxi/Taxi_Missions.Player_VehicleMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_13_Enabled
  l0.Disabled = DummyFunction
  l0.Entered = self.f_13_Entered
  l0.Exited = self.f_13_Exited
  l0.VehicleWrecked = DummyFunction
  l0.PlayerAbandonedVehicle = DummyFunction
  self[3] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Shown = self.f_3_Shown
  l0.Hidden = self.f_3_Hidden
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
  l0 = self[2]
  l0.LayerName = "S11_EyeForAnEye_Main"
  l0:Load()
end
function export:f_9_Attached()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Show()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372046513839865"
  l0:Attach()
end
function export:f_5_HackSuccess()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Hide()
end
function export:f_10_Disabled()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_10_PickedUp()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_4_Attached()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Show()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[7]
  l0.CLO = "9223372046273698277"
  l0:Activate()
end
function export:f_12_DestinationReached()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:f_7_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[7]
  self.PlayerVehicle = l0.UserID
  l0 = self[4]
  l0.Parent = "9223372044771937650"
  l0.Child = "9223372046513838995"
  l0:Attach()
end
function export:f_6_Hidden()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_6_Shown()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_8_Entered()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Hide()
end
function export:f_13_Enabled()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_13_Entered()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(1)
end
function export:f_13_Exited()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:f_3_Hidden()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_3_Shown()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.HackableEntity = "9223372044771937650"
end
function export:en_10()
  local l0
  l0 = self[10]
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
function export:en_12()
  local l0
  l0 = self[12]
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
function export:en_6()
  local l0
  l0 = self[6]
  l0.MapPoint = "9223372046513839865"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.Vehicle = self.PlayerVehicle
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.Mission = "MissionList.9223372045907020532"
  l0.VehiclePlayer = self.PlayerVehicle
  l0.IconVehicle = "9223372046513839865"
  l0.TimeToReturnToVehicle = 20
  l0.CheckNow = 0
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.MapPoint = "9223372046513838995"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
end
_compilerVersion = 4
