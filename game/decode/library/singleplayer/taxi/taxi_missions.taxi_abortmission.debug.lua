export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/GameplayConversationController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi_AbortMission"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission"
  self.AbortRequested = 0
  self.box_MissionLayer_v2_6 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_6
  l0._graph = self
  l0._name = "box_MissionLayer_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|165534797"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_6_Unloaded
  l0.Reseted = DummyFunction
  self.box_SetBoolean_v2_29 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_29
  l0._graph = self
  l0._name = "box_SetBoolean_v2_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|245658651"
  l0.Out = self.f_box_SetBoolean_v2_29_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_29_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_29_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_29_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_29_SetFromBool
  self.box_Timer_v2_39 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_39
  l0._graph = self
  l0._name = "box_Timer_v2_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|457901886"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_39_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_11 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_11
  l0._graph = self
  l0._name = "box_Multiple_AND_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|558861242"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_11_Out
  self.box_SetBoolean_v2_35 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_35
  l0._graph = self
  l0._name = "box_SetBoolean_v2_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|567924062"
  l0.Out = self.f_box_SetBoolean_v2_35_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_35_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_35_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_35_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_35_SetFromBool
  self.box_MissionCheckpointReach_7 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_7
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|578824329"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_box_MissionCheckpointReach_7_AllCheckpointsDisabled
  self.box_GameplayConversationController_v3_32 = cbox:CreateBox("Domino/System/GameplayConversationController_v3.lua")
  l0 = self.box_GameplayConversationController_v3_32
  l0._graph = self
  l0._name = "box_GameplayConversationController_v3_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|588072306"
  l0.Out = self.f_box_GameplayConversationController_v3_32_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Failed = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionController_v4_19 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_19
  l0._graph = self
  l0._name = "box_MissionController_v4_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|711701046"
  self.box_MissionController_v4_18 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_18
  l0._graph = self
  l0._name = "box_MissionController_v4_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|754930862"
  self.box_MissionController_v4_20 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_20
  l0._graph = self
  l0._name = "box_MissionController_v4_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|837277323"
  self.box_TaxiStrategiesController_4 = cbox:CreateBox("Domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_4
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|999699962"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_4_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MissionController_v4_3 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1077119559"
  self.box_Multiple_AND_17 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_17
  l0._graph = self
  l0._name = "box_Multiple_AND_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1171262733"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_17_Out
  self.box_SetBoolean_v2_23 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_23
  l0._graph = self
  l0._name = "box_SetBoolean_v2_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1256899981"
  l0.Out = self.f_box_SetBoolean_v2_23_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_23_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_23_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_23_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_23_SetFromBool
  self.box_Multiple_AND_10 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_10
  l0._graph = self
  l0._name = "box_Multiple_AND_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1257722365"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_10_Out
  self.box_SetBoolean_v2_27 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_27
  l0._graph = self
  l0._name = "box_SetBoolean_v2_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1357348696"
  l0.Out = self.f_box_SetBoolean_v2_27_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_27_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_27_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_27_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_27_SetFromBool
  self.box_SetBoolean_v2_25 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_25
  l0._graph = self
  l0._name = "box_SetBoolean_v2_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1529773934"
  l0.Out = self.f_box_SetBoolean_v2_25_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_25_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_25_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_25_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_25_SetFromBool
  self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1730443829"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_Multiple_AND_9 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_9
  l0._graph = self
  l0._name = "box_Multiple_AND_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1885615175"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_9_Out
  self.box_Multiple_AND_37 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_37
  l0._graph = self
  l0._name = "box_Multiple_AND_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1952281398"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_37_Out
  self.box_OnceOnly_v3_8 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|2100662790"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
  self.box_GameplayConversationController_v3_31 = cbox:CreateBox("Domino/System/GameplayConversationController_v3.lua")
  l0 = self.box_GameplayConversationController_v3_31
  l0._graph = self
  l0._name = "box_GameplayConversationController_v3_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|2101537110"
  l0.Out = self.f_box_GameplayConversationController_v3_31_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Failed = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionController_v4_38 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_38
  l0._graph = self
  l0._name = "box_MissionController_v4_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|2134261887"
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:ClientBailedOut()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AbortRequested
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1972055677"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_34_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|764190212", "764190212", "Taxi_AbortMission", "ClientBailedOut", "box_Compare_Boolean_v2_34.In", self, l0)
  l0:In()
end
function export:ClientDead()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AbortRequested
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1655651042"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_26_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|734494334", "734494334", "Taxi_AbortMission", "ClientDead", "box_Compare_Boolean_v2_26.In", self, l0)
  l0:In()
end
function export:ClientLeft()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AbortRequested
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|825684061"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_28_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1738755788", "1738755788", "Taxi_AbortMission", "ClientLeft", "box_Compare_Boolean_v2_28.In", self, l0)
  l0:In()
end
function export:PlayerAbandonedVehicle()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AbortRequested
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1645601975"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_24_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1236892324", "1236892324", "Taxi_AbortMission", "PlayerAbandonedVehicle", "box_Compare_Boolean_v2_24.In", self, l0)
  l0:In()
end
function export:VehicleUnusable()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AbortRequested
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1453329599"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_22_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1276056274", "1276056274", "Taxi_AbortMission", "VehicleUnusable", "box_Compare_Boolean_v2_22.In", self, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_6_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1753139670"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_21_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_21_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_21_Out_4
  l0 = self.box_MissionLayer_v2_6
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|675345277", "675345277", "Taxi_AbortMission", "box_MissionLayer_v2_6.Unloaded", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_29_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_29
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_29_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_29
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_29_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_29
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_29_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_29
  self.AbortRequested = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1759756451"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_SetBoolean_v2_29
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1723515669", "1723515669", "Taxi_AbortMission", "box_SetBoolean_v2_29.SetTrue", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_29_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_29
  self.AbortRequested = l0.Target
end
function export:f_box_Timer_v2_39_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|616684642"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_1_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_Timer_v2_39
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|2038834530", "2038834530", "Taxi_AbortMission", "box_Timer_v2_39.TimeElapsed", "box_Show_Or_Hide_All_UI_1.Show", l0, l1)
  l1:Show()
end
function export:f_box_Multiple_AND_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_19
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailClientDead",
    id = "337821"
  }
  l0 = self.box_Multiple_AND_11
  l1 = self.box_MissionController_v4_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1905147272", "1905147272", "Taxi_AbortMission", "box_Multiple_AND_11.Out", "box_MissionController_v4_19.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_SetBoolean_v2_35_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_35_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_35_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_35_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.AbortRequested = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1722137646"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_36_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_36_Out_1
  l0 = self.box_SetBoolean_v2_35
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1450417934", "1450417934", "Taxi_AbortMission", "box_SetBoolean_v2_35.SetTrue", "box_Ordered_Output_36.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_35_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.AbortRequested = l0.Target
end
function export:f_box_MissionCheckpointReach_7_AllCheckpointsDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_6
  l0.LayerName = self.LayerName
  l0 = self.box_MissionCheckpointReach_7
  l1 = self.box_MissionLayer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|2066462069", "2066462069", "Taxi_AbortMission", "box_MissionCheckpointReach_7.AllCheckpointsDisabled", "box_MissionLayer_v2_6.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_GameplayConversationController_v3_32_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1488451754"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  l0 = self.box_GameplayConversationController_v3_32
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|232845093", "232845093", "Taxi_AbortMission", "box_GameplayConversationController_v3_32.Out", "box_Ordered_Output_14.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_1_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_4
  l0.Config = self.StrategyConfig
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|141382781", "141382781", "Taxi_AbortMission", "box_Show_Or_Hide_All_UI_1.Shown", "box_TaxiStrategiesController_4.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Compare_Boolean_v2_28_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|558475884", "558475884", "Taxi_AbortMission", "box_Compare_Boolean_v2_28.A_is_False", "box_SetBoolean_v2_29.True", clone, l0)
  l0:True()
end
function export:f_box_TaxiStrategiesController_4_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_4
  l1 = self.box_MissionCheckpointReach_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1450724273", "1450724273", "Taxi_AbortMission", "box_TaxiStrategiesController_4.Stopped", "box_MissionCheckpointReach_7.DisableAllCheckpoints", l0, l1)
  l1:DisableAllCheckpoints()
end
function export:f_box_Multiple_AND_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_20
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailAwayFromCar",
    id = "337824"
  }
  l0 = self.box_Multiple_AND_17
  l1 = self.box_MissionController_v4_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|671859456", "671859456", "Taxi_AbortMission", "box_Multiple_AND_17.Out", "box_MissionController_v4_20.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_SetBoolean_v2_23_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_23
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_23_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_23
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_23_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_23
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_23_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_23
  self.AbortRequested = l0.Target
  l0 = self.box_GameplayConversationController_v3_31
  l0.User1 = self.Pawn1
  l0.User2 = self.Pawn2
  l0.Conversation = self.Conversation
  l0 = self.box_SetBoolean_v2_23
  l1 = self.box_GameplayConversationController_v3_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|2086029728", "2086029728", "Taxi_AbortMission", "box_SetBoolean_v2_23.SetTrue", "box_GameplayConversationController_v3_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_23_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_23
  self.AbortRequested = l0.Target
end
function export:f_box_Multiple_AND_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_18
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailAwayFromCar",
    id = "337824"
  }
  l0 = self.box_Multiple_AND_10
  l1 = self.box_MissionController_v4_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|748010476", "748010476", "Taxi_AbortMission", "box_Multiple_AND_10.Out", "box_MissionController_v4_18.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_11()
  l0 = self.box_Multiple_AND_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1988983072", "1988983072", "Taxi_AbortMission", "box_Ordered_Output_15.Out", "box_Multiple_AND_11.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1394153119", "1394153119", "Taxi_AbortMission", "box_Ordered_Output_15.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_SetBoolean_v2_27_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_27_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_27_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_27_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.AbortRequested = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1354782280"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  l0 = self.box_SetBoolean_v2_27
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|382064190", "382064190", "Taxi_AbortMission", "box_SetBoolean_v2_27.SetTrue", "box_Ordered_Output_15.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_27_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.AbortRequested = l0.Target
end
function export:f_box_Compare_Boolean_v2_22_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1263723651", "1263723651", "Taxi_AbortMission", "box_Compare_Boolean_v2_22.A_is_False", "box_SetBoolean_v2_23.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|631233221", "631233221", "Taxi_AbortMission", "box_Ordered_Output_14.Out", "box_Multiple_AND_10.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|898055072", "898055072", "Taxi_AbortMission", "box_Ordered_Output_14.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SetBoolean_v2_25_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_25
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_25_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_25
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_25_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_25
  self.AbortRequested = l0.Target
end
function export:f_box_SetBoolean_v2_25_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_25
  self.AbortRequested = l0.Target
  l0 = self.box_GameplayConversationController_v3_32
  l0.User1 = self.Pawn1
  l0.User2 = self.Pawn2
  l0.Conversation = self.Conversation
  l0 = self.box_SetBoolean_v2_25
  l1 = self.box_GameplayConversationController_v3_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1601729778", "1601729778", "Taxi_AbortMission", "box_SetBoolean_v2_25.SetTrue", "box_GameplayConversationController_v3_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_25_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_25
  self.AbortRequested = l0.Target
end
function export:f_box_Compare_Boolean_v2_24_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|2015091866", "2015091866", "Taxi_AbortMission", "box_Compare_Boolean_v2_24.A_is_False", "box_SetBoolean_v2_25.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_26_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|332572116", "332572116", "Taxi_AbortMission", "box_Compare_Boolean_v2_26.A_is_False", "box_SetBoolean_v2_27.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_36_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_37()
  l0 = self.box_Multiple_AND_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1414428743", "1414428743", "Taxi_AbortMission", "box_Ordered_Output_36.Out", "box_Multiple_AND_37.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_36_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|590565798", "590565798", "Taxi_AbortMission", "box_Ordered_Output_36.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_12
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|979497357", "979497357", "Taxi_AbortMission", "box_MultipleOR_12.Out", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_9()
  l0 = self.box_Multiple_AND_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1401767779", "1401767779", "Taxi_AbortMission", "box_Ordered_Output_21.Out", "box_Multiple_AND_9.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1052870523", "1052870523", "Taxi_AbortMission", "box_Ordered_Output_21.Out", "box_Multiple_AND_10.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_21_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_11()
  l0 = self.box_Multiple_AND_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|373058767", "373058767", "Taxi_AbortMission", "box_Ordered_Output_21.Out", "box_Multiple_AND_11.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_21_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_17()
  l0 = self.box_Multiple_AND_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|714214541", "714214541", "Taxi_AbortMission", "box_Ordered_Output_21.Out", "box_Multiple_AND_17.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_21_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_37()
  l0 = self.box_Multiple_AND_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1165455098", "1165455098", "Taxi_AbortMission", "box_Ordered_Output_21.Out", "box_Multiple_AND_37.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_17()
  l0 = self.box_Multiple_AND_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|623084035", "623084035", "Taxi_AbortMission", "box_Ordered_Output_16.Out", "box_Multiple_AND_17.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|468682918", "468682918", "Taxi_AbortMission", "box_Ordered_Output_16.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Multiple_AND_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_3
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailVehicleTotaled",
    id = "337822"
  }
  l0 = self.box_Multiple_AND_9
  l1 = self.box_MissionController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|743036049", "743036049", "Taxi_AbortMission", "box_Multiple_AND_9.Out", "box_MissionController_v4_3.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_Multiple_AND_37_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_38
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailClientBailedOut",
    id = "606652"
  }
  l0 = self.box_Multiple_AND_37
  l1 = self.box_MissionController_v4_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1334311974", "1334311974", "Taxi_AbortMission", "box_Multiple_AND_37.Out", "box_MissionController_v4_38.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_Compare_Boolean_v2_34_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|314401045", "314401045", "Taxi_AbortMission", "box_Compare_Boolean_v2_34.A_is_False", "box_SetBoolean_v2_35.True", clone, l0)
  l0:True()
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_39
  l0.Seconds = 0.1
  l0 = self.box_OnceOnly_v3_8
  l1 = self.box_Timer_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|983878292", "983878292", "Taxi_AbortMission", "box_OnceOnly_v3_8.Out", "box_Timer_v2_39.Start", l0, l1)
  l1:Start()
end
function export:f_box_GameplayConversationController_v3_31_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|2128484967"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0 = self.box_GameplayConversationController_v3_31
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|603422852", "603422852", "Taxi_AbortMission", "box_GameplayConversationController_v3_31.Out", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_9()
  l0 = self.box_Multiple_AND_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|275895581", "275895581", "Taxi_AbortMission", "box_Ordered_Output_13.Out", "box_Multiple_AND_9.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_AbortMission|1266783588", "1266783588", "Taxi_AbortMission", "box_Ordered_Output_13.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(0)
end
function export:OnEnter_box_Multiple_AND_11()
end
function export:OnEnter_box_Multiple_AND_17()
end
function export:OnEnter_box_Multiple_AND_10()
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_Multiple_AND_9()
end
function export:OnEnter_box_Multiple_AND_37()
end
_compilerVersion = 4
