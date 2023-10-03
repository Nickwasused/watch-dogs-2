export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.Test_VehicleHandlingRoutes_Escape.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBike01.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBike02.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBoat01.debug.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Test_VehicleHandlingRoute_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main"
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
  self.box_MissionLayer_v2_3 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_3
  l0._graph = self
  l0._name = "box_MissionLayer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|243527848"
  l0.Loaded = self.f_box_MissionLayer_v2_3_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_4 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_4
  l0._graph = self
  l0._name = "box_Timer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|352876945"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TestVehicleHandlingRouteBike01_5 = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBike01.debug.lua")
  l0 = self.box_TestVehicleHandlingRouteBike01_5
  l0._graph = self
  l0._name = "box_TestVehicleHandlingRouteBike01_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|1214431133"
  l0.Out = self.f_box_TestVehicleHandlingRouteBike01_5_Out
  self.box_Test_VehicleHandlingRoutes_Escape_8 = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.Test_VehicleHandlingRoutes_Escape.debug.lua")
  l0 = self.box_Test_VehicleHandlingRoutes_Escape_8
  l0._graph = self
  l0._name = "box_Test_VehicleHandlingRoutes_Escape_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|1483143415"
  l0.Out = DummyFunction
  self.box_TestVehicleHandlingRouteBike02_7 = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBike02.debug.lua")
  l0 = self.box_TestVehicleHandlingRouteBike02_7
  l0._graph = self
  l0._name = "box_TestVehicleHandlingRouteBike02_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|1926855502"
  l0.StartChase = self.f_box_TestVehicleHandlingRouteBike02_7_StartChase
  self.box_TestVehicleHandlingRouteBoat01_6 = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Test_VehicleHandlingRoutes/Test_VehicleHandlingRoute.TestVehicleHandlingRouteBoat01.debug.lua")
  l0 = self.box_TestVehicleHandlingRouteBoat01_6
  l0._graph = self
  l0._name = "box_TestVehicleHandlingRouteBoat01_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|1998566621"
  l0.Out = self.f_box_TestVehicleHandlingRouteBoat01_6_Out
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
  l0 = self.box_MissionLayer_v2_3
  l0.LayerName = "Test_VehicleHandlingRoutes_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|469954341", "469954341", "Test_VehicleHandlingRoute_Main", "In", "box_MissionLayer_v2_3.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionLayer_v2_3_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_4
  l0.Seconds = 2
  l0 = self.box_MissionLayer_v2_3
  l1 = self.box_Timer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|951464404", "951464404", "Test_VehicleHandlingRoute_Main", "box_MissionLayer_v2_3.Loaded", "box_Timer_v2_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_4_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Go Time!"
  l0.Duration = 5
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|1494839193"
  l0.Out = self.f_box_TextToScreen_v2_1_Out
  l0 = self.box_Timer_v2_4
  l1 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|748971361", "748971361", "Test_VehicleHandlingRoute_Main", "box_Timer_v2_4.TimeElapsed", "box_TextToScreen_v2_1.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TestVehicleHandlingRouteBike01_5
  l0.e_PlayerEntity = self.PlayerEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|683923414", "683923414", "Test_VehicleHandlingRoute_Main", "box_Get_Player_ID_2.Out", "box_TestVehicleHandlingRouteBike01_5.In", clone, l0)
  l0:In()
end
function export:f_box_TestVehicleHandlingRouteBike01_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TestVehicleHandlingRouteBike01_5
  self.Boat01 = l0.e_CurrentVehicle
  l0 = self.box_TestVehicleHandlingRouteBoat01_6
  l0.e_PlayerEntity = self.PlayerEntity
  l0.e_CurrentVehicle = self.Boat01
  l0 = self.box_TestVehicleHandlingRouteBike01_5
  l1 = self.box_TestVehicleHandlingRouteBoat01_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|814915336", "814915336", "Test_VehicleHandlingRoute_Main", "box_TestVehicleHandlingRouteBike01_5.Out", "box_TestVehicleHandlingRouteBoat01_6.In", l0, l1)
  l1:In()
end
function export:f_box_TextToScreen_v2_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|488483685"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|1395905576", "1395905576", "Test_VehicleHandlingRoute_Main", "box_TextToScreen_v2_1.Out", "box_Get_Player_ID_2.In", clone, l0)
  l0:In()
end
function export:f_box_TestVehicleHandlingRouteBike02_7_StartChase()
  local l0, l1
  self = self._graph
  l0 = self.box_TestVehicleHandlingRouteBike02_7
  l1 = self.box_Test_VehicleHandlingRoutes_Escape_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|909045105", "909045105", "Test_VehicleHandlingRoute_Main", "box_TestVehicleHandlingRouteBike02_7.StartChase", "box_Test_VehicleHandlingRoutes_Escape_8.In", l0, l1)
  l1:In()
end
function export:f_box_TestVehicleHandlingRouteBoat01_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TestVehicleHandlingRouteBoat01_6
  self.Bike02 = l0.e_Bike02
  l0 = self.box_TestVehicleHandlingRouteBike02_7
  l0.e_CurrentVehicle = self.Bike02
  l0.e_PlayerEntity = self.PlayerEntity
  l0 = self.box_TestVehicleHandlingRouteBoat01_6
  l1 = self.box_TestVehicleHandlingRouteBike02_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoute_Main|1632952490", "1632952490", "Test_VehicleHandlingRoute_Main", "box_TestVehicleHandlingRouteBoat01_6.Out", "box_TestVehicleHandlingRouteBike02_7.In", l0, l1)
  l1:In()
end
_compilerVersion = 4
