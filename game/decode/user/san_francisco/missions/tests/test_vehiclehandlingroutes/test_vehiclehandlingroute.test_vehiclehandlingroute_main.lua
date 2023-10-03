export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.Test_VehicleHandlingRoutes_Escape.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBike01.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBike02.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBoat01.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Speed02 = nil
  self.NextCheckpoint = nil
  self.Seconds = 0
  self.NextCheckpointEntity = "9223372046000330076"
  self.Checkpoints = {}
  self.ProximityTrigger = "9223372045943697499"
  self.CurrentCheckpoint = nil
  self.RemainingTime = 0
  self.CurrentIndex = 1
  self.ListLenght = 0
  self.Crossover01 = nil
  self.Muscle01 = nil
  self.Agile02 = nil
  self.GPSIndex = 1
  self.Distance = 0
  self.CurrentVehicle = nil
  self.RaceRing = "9223372045943697501"
  self.CurrentIndexPlusOne = 0
  self.EnemyVehicle = nil
  self.NPC_Bike = "9223372045687342571"
  self.NPC = nil
  self.CLO_370811885582781374 = "9223372045730519703"
  self.Boat = nil
  self.IsBoat = 0
  self.Boat01 = nil
  self.Bike02 = nil
  self[3] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Loaded = self.f_3_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[5] = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBike01.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  self[8] = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.Test_VehicleHandlingRoutes_Escape.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  self[7] = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBike02.lua")
  l0 = self[7]
  l0._graph = self
  l0.StartChase = self.f_7_StartChase
  self[6] = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBoat01.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
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
  l0 = self[3]
  l0.LayerName = "Test_VehicleHandlingRoutes_Main"
  l0:Load()
end
function export:f_3_Loaded()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Seconds = 2
  l0:Start()
end
function export:f_4_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Go Time!"
  l0.Duration = 5
  l0.Color = nil
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[5]
  l0.e_PlayerEntity = self.PlayerEntity
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[5]
  self.Boat01 = l0.e_CurrentVehicle
  l0 = self[6]
  l0.e_PlayerEntity = self.PlayerEntity
  l0.e_CurrentVehicle = self.Boat01
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_7_StartChase()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[6]
  self.Bike02 = l0.e_Bike02
  l0 = self[7]
  l0.e_CurrentVehicle = self.Bike02
  l0.e_PlayerEntity = self.PlayerEntity
  l0:In()
end
_compilerVersion = 4
