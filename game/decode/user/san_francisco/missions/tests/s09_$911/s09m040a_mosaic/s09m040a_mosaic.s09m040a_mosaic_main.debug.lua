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
  self._name = "S09M040a_Mosaic_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main"
  self.Player = nil
  self.car1 = nil
  self.car2 = nil
  self.car3 = nil
  self.bratva1 = nil
  self.bratva2 = nil
  self.bratva3 = nil
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|147386779"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_4_OnUserInPlace
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_5 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|318046741"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_5_OnUserInPlace
  self.box_VehicleBhvController_16 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_16
  l0._graph = self
  l0._name = "box_VehicleBhvController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|347305533"
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_VehicleSeatingController_9 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_9
  l0._graph = self
  l0._name = "box_VehicleSeatingController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|415902267"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_9_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleSeatingController_10 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_10
  l0._graph = self
  l0._name = "box_VehicleSeatingController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|671966845"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_10_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|720754473"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
  self.box_VehicleSeatingController_11 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_11
  l0._graph = self
  l0._name = "box_VehicleSeatingController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|727636056"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_11_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_13 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_13
  l0._graph = self
  l0._name = "box_Multiple_AND_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1534666103"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_13_Out
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1648978683"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_6_OnUserInPlace
  self.box_CLOController_7 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_7
  l0._graph = self
  l0._name = "box_CLOController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1670315651"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_7_OnUserInPlace
  self.box_CLOController_8 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1672129039"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_8_OnUserInPlace
  self.box_VehicleBhvController_15 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_15
  l0._graph = self
  l0._name = "box_VehicleBhvController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1977418334"
  l0.StartCompleted = self.f_box_VehicleBhvController_15_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_VehicleBhvController_14 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_14
  l0._graph = self
  l0._name = "box_VehicleBhvController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|2104531401"
  l0.StartCompleted = self.f_box_VehicleBhvController_14_StartCompleted
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S09_M040a_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|497030175", "497030175", "S09M040a_Mosaic_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_CLOController_4_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  self.car2 = l0.UserID
  l0 = self.box_CLOController_5
  l0.CLO = "9223372055904525152"
  l0 = self.box_CLOController_4
  l1 = self.box_CLOController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1644353833", "1644353833", "S09M040a_Mosaic_Main", "box_CLOController_4.OnUserInPlace", "box_CLOController_5.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|794668992", "794668992", "S09M040a_Mosaic_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_9
  l0.Vehicle = self.car1
  l0.Pawn = self.bratva1
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1068791830", "1068791830", "S09M040a_Mosaic_Main", "box_Ordered_Output_12.Out", "box_VehicleSeatingController_9.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_10
  l0.Vehicle = self.car2
  l0.Pawn = self.bratva2
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1486726177", "1486726177", "S09M040a_Mosaic_Main", "box_Ordered_Output_12.Out", "box_VehicleSeatingController_10.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Ordered_Output_12_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_11
  l0.Vehicle = self.car3
  l0.Pawn = self.bratva3
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1019155299", "1019155299", "S09M040a_Mosaic_Main", "box_Ordered_Output_12.Out", "box_VehicleSeatingController_11.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_CLOController_5_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_5
  self.car3 = l0.UserID
  l0 = self.box_CLOController_6
  l0.CLO = "9223372055904525130"
  l0 = self.box_CLOController_5
  l1 = self.box_CLOController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|437045980", "437045980", "S09M040a_Mosaic_Main", "box_CLOController_5.OnUserInPlace", "box_CLOController_6.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_VehicleSeatingController_9_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_VehicleSeatingController_9
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1815128664", "1815128664", "S09M040a_Mosaic_Main", "box_VehicleSeatingController_9.AssignCompleted", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_VehicleSeatingController_10_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_VehicleSeatingController_10
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1002055138", "1002055138", "S09M040a_Mosaic_Main", "box_VehicleSeatingController_10.AssignCompleted", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.car1 = l0.UserID
  l0 = self.box_CLOController_4
  l0.CLO = "9223372055904525143"
  l0 = self.box_CLOController_3
  l1 = self.box_CLOController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|615121094", "615121094", "S09M040a_Mosaic_Main", "box_CLOController_3.OnUserInPlace", "box_CLOController_4.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_VehicleSeatingController_11_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_VehicleSeatingController_11
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|2015524031", "2015524031", "S09M040a_Mosaic_Main", "box_VehicleSeatingController_11.AssignCompleted", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_3
  l0.CLO = "9223372055904525133"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1307976396", "1307976396", "S09M040a_Mosaic_Main", "box_Get_Player_ID_1.Out", "box_CLOController_3.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Multiple_AND_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_14
  l0.VehicleMaster = self.car1
  l0.VehicleTarget = self.Player
  l0.PathOrPos = "9223372060257381898"
  l0.Config = "VehicleBhvSetup.9223372044303652121"
  l0 = self.box_Multiple_AND_13
  l1 = self.box_VehicleBhvController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|604962890", "604962890", "S09M040a_Mosaic_Main", "box_Multiple_AND_13.Out", "box_VehicleBhvController_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_6_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  self.bratva1 = l0.UserID
  l0 = self.box_CLOController_7
  l0.CLO = "9223372055904525129"
  l0 = self.box_CLOController_6
  l1 = self.box_CLOController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|2101555193", "2101555193", "S09M040a_Mosaic_Main", "box_CLOController_6.OnUserInPlace", "box_CLOController_7.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_7_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_7
  self.bratva2 = l0.UserID
  l0 = self.box_CLOController_8
  l0.CLO = "9223372055904525132"
  l0 = self.box_CLOController_7
  l1 = self.box_CLOController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1759341166", "1759341166", "S09M040a_Mosaic_Main", "box_CLOController_7.OnUserInPlace", "box_CLOController_8.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_8_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  self.bratva3 = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|298263902"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_12_Out_2
  l0 = self.box_CLOController_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1084567973", "1084567973", "S09M040a_Mosaic_Main", "box_CLOController_8.OnUserInPlace", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleBhvController_15_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_16
  l0.VehicleMaster = self.car3
  l0.VehicleTarget = self.Player
  l0.PathOrPos = "9223372060257381902"
  l0.Config = "VehicleBhvSetup.9223372044303652121"
  l0 = self.box_VehicleBhvController_15
  l1 = self.box_VehicleBhvController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|913254657", "913254657", "S09M040a_Mosaic_Main", "box_VehicleBhvController_15.StartCompleted", "box_VehicleBhvController_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleBhvController_14_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_15
  l0.VehicleMaster = self.car2
  l0.VehicleTarget = self.Player
  l0.PathOrPos = "9223372060257381900"
  l0.Config = "VehicleBhvSetup.9223372044303652121"
  l0 = self.box_VehicleBhvController_14
  l1 = self.box_VehicleBhvController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S09_$911\\S09M040a_Mosaic\\S09M040a_Mosaic.domino|@S09M040a_Mosaic_Main|1082378796", "1082378796", "S09M040a_Mosaic_Main", "box_VehicleBhvController_14.StartCompleted", "box_VehicleBhvController_15.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_Multiple_AND_13()
end
_compilerVersion = 4
