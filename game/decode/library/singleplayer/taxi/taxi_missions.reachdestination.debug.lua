export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GPS3DController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "ReachDestination"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination"
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.DestinationReached = DummyFunction
  self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|93776211"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_MissionMessageController_v3_18 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_18
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|353338420"
  l0.Out = self.f_box_MissionMessageController_v3_18_Out
  l0.MessageCompleted = DummyFunction
  self.box_Proximity_Monitor_7 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_7
  l0._graph = self
  l0._name = "box_Proximity_Monitor_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|472539080"
  l0.Enabled = self.f_box_Proximity_Monitor_7_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_7_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_7_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_7_ExitRadius
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|578455659"
  l0.Out = self.f_box_MissionMessageController_v3_5_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|678210333"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_MapPointController_v3_16 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_16
  l0._graph = self
  l0._name = "box_MapPointController_v3_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|717923538"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_37 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_37
  l0._graph = self
  l0._name = "box_MapPointController_v3_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|936527947"
  l0.Shown = self.f_box_MapPointController_v3_37_Shown
  l0.Hidden = self.f_box_MapPointController_v3_37_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_24
  l0._graph = self
  l0._name = "box_MultipleOR_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|976462183"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_24_Out
  self.box_VehicleMonitor_v2_39 = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_39
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1137626596"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = self.f_box_VehicleMonitor_v2_39_NoMoveTimer
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  self.box_MissionMessageController_v3_27 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_27
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1496388373"
  l0.Out = self.f_box_MissionMessageController_v3_27_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_40
  l0._graph = self
  l0._name = "box_MultipleOR_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1500808886"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_40_Out
  self.box_MapPointController_v3_1 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_1
  l0._graph = self
  l0._name = "box_MapPointController_v3_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1656808198"
  l0.Shown = self.f_box_MapPointController_v3_1_Shown
  l0.Hidden = self.f_box_MapPointController_v3_1_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_20
  l0._graph = self
  l0._name = "box_MultipleOR_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1711072093"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_20_Out
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
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|755978378"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|13655273", "13655273", "ReachDestination", "Disable", "box_Ordered_Output_17.In", self, l0)
  l0:In()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ManageObjectives
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|2134678830"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_13_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_13_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|788994339", "788994339", "ReachDestination", "Enable", "box_Compare_Boolean_v2_13.In", self, l0)
  l0:In()
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ManageObjectives
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1024284740"
  l0.Out = self.f_box_Compare_Boolean_v2_23_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_23_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_23_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_19
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1883834344", "1883834344", "ReachDestination", "box_MultipleOR_19.Out", "box_Compare_Boolean_v2_23.In", l0, l1)
  l1:In()
end
function export:f_box_Force_Pawns_Vehicle_Stop_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1792931994"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_14_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1017112801", "1017112801", "ReachDestination", "box_Force_Pawns_Vehicle_Stop_35.Out", "box_SetActionMap_v2_14.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_MissionMessageController_v3_18_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MissionMessageController_v3_18
  l1 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1134386364", "1134386364", "ReachDestination", "box_MissionMessageController_v3_18.Out", "box_MultipleOR_24.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Proximity_Monitor_7_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_16
  l0.MapPoint = self.Destination
  l0 = self.box_Proximity_Monitor_7
  l1 = self.box_MapPointController_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1072564954", "1072564954", "ReachDestination", "box_Proximity_Monitor_7.Disabled", "box_MapPointController_v3_16.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Proximity_Monitor_7_Enabled()
  local l0
  self = self._graph
  l0 = self.box_Proximity_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|821558282", "821558282", "ReachDestination", "box_Proximity_Monitor_7.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_Proximity_Monitor_7_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_37()
  l0 = self.box_Proximity_Monitor_7
  l1 = self.box_MapPointController_v3_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|671823795", "671823795", "ReachDestination", "box_Proximity_Monitor_7.EnterRadius", "box_MapPointController_v3_37.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Proximity_Monitor_7_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_37()
  l0 = self.box_Proximity_Monitor_7
  l1 = self.box_MapPointController_v3_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1154007239", "1154007239", "ReachDestination", "box_Proximity_Monitor_7.ExitRadius", "box_MapPointController_v3_37.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionMessageController_v3_5_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MissionMessageController_v3_5
  l1 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1653144156", "1653144156", "ReachDestination", "box_MissionMessageController_v3_5.Out", "box_MultipleOR_20.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_1()
  l0 = self.box_MultipleOR_4
  l1 = self.box_MapPointController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|154539544", "154539544", "ReachDestination", "box_MultipleOR_4.Out", "box_MapPointController_v3_1.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1757281270", "1757281270", "ReachDestination", "box_Ordered_Output_17.Out", "Disabled", clone, self)
  self:Disabled()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ManageObjectives
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1032775466"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_22_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_22_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|2142026227", "2142026227", "ReachDestination", "box_Ordered_Output_17.Out", "box_Compare_Boolean_v2_22.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_10_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_2()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|2125448385", "2125448385", "ReachDestination", "box_Compare_Boolean_v2_10.A_is_True", "box_3DGPSController_2.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Boolean_v2_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_7()
  l0 = self.box_Proximity_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1538056892", "1538056892", "ReachDestination", "box_Compare_Boolean_v2_10.Out", "box_Proximity_Monitor_7.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MapPointController_v3_37_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoStop
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1192733850"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_11_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_11_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MapPointController_v3_37
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|420733644", "420733644", "ReachDestination", "box_MapPointController_v3_37.Hidden", "box_Compare_Boolean_v2_11.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v3_37_Shown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoStop
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1949431270"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_8_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MapPointController_v3_37
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1061760268", "1061760268", "ReachDestination", "box_MapPointController_v3_37.Shown", "box_Compare_Boolean_v2_8.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_24_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1945009669", "1945009669", "ReachDestination", "box_MultipleOR_24.Out", "DestinationReached", l0, self)
  self:DestinationReached()
end
function export:f_box_Compare_Boolean_v2_9_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_2()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|890311326", "890311326", "ReachDestination", "box_Compare_Boolean_v2_9.A_is_True", "box_3DGPSController_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_7()
  l0 = self.box_Proximity_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|230424354", "230424354", "ReachDestination", "box_Compare_Boolean_v2_9.Out", "box_Proximity_Monitor_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetActionMap_v2_38_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  l0.PlayerEntity = nil
  l0._graph = self
  l0._name = "box_Force_Pawns_Vehicle_Stop_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|135901156"
  l0.Out = self.f_box_Force_Pawns_Vehicle_Stop_35_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1171241689", "1171241689", "ReachDestination", "box_SetActionMap_v2_38.Pushed", "box_Force_Pawns_Vehicle_Stop_35.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_23_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1876577107", "1876577107", "ReachDestination", "box_Compare_Boolean_v2_23.A_is_False", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_23_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_18
  l0.Objective = self.Objective
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|145625888", "145625888", "ReachDestination", "box_Compare_Boolean_v2_23.A_is_True", "box_MissionMessageController_v3_18.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_Compare_Boolean_v2_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1226866204"
  l0.Out = self.f_box_Simple_Node_26_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|529263770", "529263770", "ReachDestination", "box_Compare_Boolean_v2_23.Out", "box_Simple_Node_26.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_22_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|390309312", "390309312", "ReachDestination", "box_Compare_Boolean_v2_22.A_is_False", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Compare_Boolean_v2_22_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_27
  l0.Objective = self.Objective
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|594203910", "594203910", "ReachDestination", "box_Compare_Boolean_v2_22.A_is_True", "box_MissionMessageController_v3_27.HideObjective", clone, l0)
  l0:HideObjective()
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1446962652", "1446962652", "ReachDestination", "box_Simple_Node_12.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_VehicleMonitor_v2_39_NoMoveTimer()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1745526418"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  l0 = self.box_VehicleMonitor_v2_39
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1326769701", "1326769701", "ReachDestination", "box_VehicleMonitor_v2_39.NoMoveTimer", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_11_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.StationaryAtDestination
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1829666145"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_6_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_6_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1440723083", "1440723083", "ReachDestination", "box_Compare_Boolean_v2_11.A_is_False", "box_Compare_Boolean_v2_6.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_11_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1020960857"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_38_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|370474035", "370474035", "ReachDestination", "box_Compare_Boolean_v2_11.A_is_True", "box_SetActionMap_v2_38.Push", clone, l0)
  l0:Push()
end
function export:f_box_Simple_Node_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|101958547", "101958547", "ReachDestination", "box_Simple_Node_26.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionMessageController_v3_27_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MissionMessageController_v3_27
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|275014975", "275014975", "ReachDestination", "box_MissionMessageController_v3_27.Out", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_39()
  l0 = self.box_MultipleOR_40
  l1 = self.box_VehicleMonitor_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|671138394", "671138394", "ReachDestination", "box_MultipleOR_40.Out", "box_VehicleMonitor_v2_39.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v3_1_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowGPS
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|855121901"
  l0.Out = self.f_box_Compare_Boolean_v2_10_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_10_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MapPointController_v3_1
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1799349196", "1799349196", "ReachDestination", "box_MapPointController_v3_1.Hidden", "box_Compare_Boolean_v2_10.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v3_1_Shown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowGPS
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1003921192"
  l0.Out = self.f_box_Compare_Boolean_v2_9_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_9_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MapPointController_v3_1
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|2014057976", "2014057976", "ReachDestination", "box_MapPointController_v3_1.Shown", "box_Compare_Boolean_v2_9.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_20_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_1()
  l0 = self.box_MultipleOR_20
  l1 = self.box_MapPointController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1686165112", "1686165112", "ReachDestination", "box_MultipleOR_20.Out", "box_MapPointController_v3_1.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1194550150", "1194550150", "ReachDestination", "box_Ordered_Output_41.Out", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1844924397", "1844924397", "ReachDestination", "box_Ordered_Output_41.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SetActionMap_v2_14_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|16887472", "16887472", "ReachDestination", "box_SetActionMap_v2_14.Popped", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_6_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1103739947"
  l0.Out = self.f_box_Simple_Node_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1264714900", "1264714900", "ReachDestination", "box_Compare_Boolean_v2_6.A_is_False", "box_Simple_Node_12.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_6_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_39()
  l0 = self.box_VehicleMonitor_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|1874802401", "1874802401", "ReachDestination", "box_Compare_Boolean_v2_6.A_is_True", "box_VehicleMonitor_v2_39.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_8_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|930336386", "930336386", "ReachDestination", "box_Compare_Boolean_v2_8.A_is_False", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_13_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|284612220", "284612220", "ReachDestination", "box_Compare_Boolean_v2_13.A_is_False", "box_MultipleOR_20.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_13_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = self.Objective
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|337081079", "337081079", "ReachDestination", "box_Compare_Boolean_v2_13.A_is_True", "box_MissionMessageController_v3_5.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:OnEnter_box_3DGPSController_2()
  local l0
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = self.Destination
  l0.Path = nil
  l0.Index = nil
  l0.PathType = nil
  l0._graph = self
  l0._name = "box_3DGPSController_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@ReachDestination|65687310"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_Proximity_Monitor_7()
  local l0
  l0 = self.box_Proximity_Monitor_7
  l0.Entity1 = self.VehiclePlayer
  l0.Entity2 = self.Destination
  l0.Radius = self.ReachDistance
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_MapPointController_v3_37()
  local l0
  l0 = self.box_MapPointController_v3_37
  l0.MapPoint = self.Destination
  l0.LocText = self.LocText
  l0.LocMapMarkerTitle = self.LocText
end
function export:OnEnter_box_MultipleOR_24()
end
function export:OnEnter_box_VehicleMonitor_v2_39()
  local l0
  l0 = self.box_VehicleMonitor_v2_39
  l0.Vehicle = self.VehiclePlayer
  l0.NoMoveTime = 0.5
end
function export:OnEnter_box_MultipleOR_40()
end
function export:OnEnter_box_MapPointController_v3_1()
  local l0
  l0 = self.box_MapPointController_v3_1
  l0.MapPoint = self.Destination
  l0.LocText = self.LocText
  l0.LocMapMarkerTitle = self.LocText
end
function export:OnEnter_box_MultipleOR_20()
end
function export:Enabled()
end
function export:Disabled()
end
function export:DestinationReached()
end
_compilerVersion = 4
