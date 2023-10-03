export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/System/GetPosition.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PauseGameWhileLoading.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/SetPosition.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S08M010_CIN_OffTheBus_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main"
  self.out = DummyFunction
  self.PlayerEntity = nil
  self.S08M010_CheckPoint_8 = "9223372049902749787"
  self.HoratioNPC = nil
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|34466202"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|587686878"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_6 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_6
  l0._graph = self
  l0._name = "box_PlaySequence_v5_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|960577904"
  l0._DynamicAnchors = {
    EntityIn = {"Horatio", "Bus"},
    EntityOut = {"Horatio", "Bus"}
  }
  l0.Started = self.f_box_PlaySequence_v5_6_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_6_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_6_Finished
  self.box_Teleport_To_SpawnPoint_10 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_10
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|961834310"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_10_TeleportDone
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1290244830"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_LogicGate_v2_11 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_11
  l0._graph = self
  l0._name = "box_LogicGate_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1455296307"
  l0.Out = self.f_box_LogicGate_v2_11_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_11_Closed
  self.box_Multiple_AND_8 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_8
  l0._graph = self
  l0._name = "box_Multiple_AND_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1657167923"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_8_Out
  self.box_LMA_Layer_Controller_1 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_1
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1767539603"
  l0.Loaded = self.f_box_LMA_Layer_Controller_1_Loaded
  l0.Unloaded = DummyFunction
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
  l0 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|59777064", "59777064", "S08M010_CIN_OffTheBus_Main", "In", "box_Timer_v2_7.Start", self, l0)
  l0:Start()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_10
  l0.SpawnPoint = "9223372046446091624"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_Timer_v2_5
  l1 = self.box_Teleport_To_SpawnPoint_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|42456542", "42456542", "S08M010_CIN_OffTheBus_Main", "box_Timer_v2_5.TimeElapsed", "box_Teleport_To_SpawnPoint_10.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372057526079048"
  l0.SceneEntity = "9223372047235790538"
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = self.HoratioNPC
  l0.NotRemovableEntity[1] = self.Bus
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|310630304"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_20_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1518535", "1518535", "S08M010_CIN_OffTheBus_Main", "box_Ordered_Output_2.Out", "box_Cinema_Zone_Cleanup_20.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_1
  l0.LMALayerName = self.NudleUpperLMA
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1627267568", "1627267568", "S08M010_CIN_OffTheBus_Main", "box_Ordered_Output_2.Out", "box_LMA_Layer_Controller_1.Load", clone, l0)
  l0:Load()
end
function export:f_box_Simple_Node_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|624598893"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|2004494798", "2004494798", "S08M010_CIN_OffTheBus_Main", "box_Simple_Node_9.Out", "box_Ordered_Output_13.In", clone, l0)
  l0:In()
end
function export:f_box_Cinema_Zone_Cleanup_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052004917120"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
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
  l0._name = "box_Lanes_Restrictions_Control_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|690809739"
  l0.Out = self.f_box_Lanes_Restrictions_Control_15_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1694391480", "1694391480", "S08M010_CIN_OffTheBus_Main", "box_Cinema_Zone_Cleanup_20.Out", "box_Lanes_Restrictions_Control_15.In", clone, l0)
  l0:In()
end
function export:f_box_Set_Entity_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.HoratioNPC = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|40445998"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1606248890", "1606248890", "S08M010_CIN_OffTheBus_Main", "box_Set_Entity_17.Out", "box_Ordered_Output_2.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|881988987"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_OnceOnly_v3_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1065332286", "1065332286", "S08M010_CIN_OffTheBus_Main", "box_OnceOnly_v3_4.Out", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_8()
  l0 = self.box_Multiple_AND_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1343630248", "1343630248", "S08M010_CIN_OffTheBus_Main", "box_Ordered_Output_13.Out", "box_Multiple_AND_8.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_11()
  l0 = self.box_LogicGate_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|2044307099", "2044307099", "S08M010_CIN_OffTheBus_Main", "box_Ordered_Output_13.Out", "box_LogicGate_v2_11.Close", clone, l0)
  l0:Close()
end
function export:f_box_Lanes_Restrictions_Control_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_6
  l0.SceneEntity = "9223372047235790538"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_OffTheBus_CIN/s08_offthebus_cin.seq"
  l0.EntityIn.Horatio = self.HoratioNPC
  l0.EntityIn.Bus = self.Bus
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1660703395", "1660703395", "S08M010_CIN_OffTheBus_Main", "box_Lanes_Restrictions_Control_15.Out", "box_PlaySequence_v5_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_SetPosition_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.HoratioNPC
  l0._graph = self
  l0._name = "box_Set_Entity_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1598890694"
  l0.Out = self.f_box_Set_Entity_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1067025973", "1067025973", "S08M010_CIN_OffTheBus_Main", "box_SetPosition_19.Out", "box_Set_Entity_18.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_8()
  l0 = self.box_Multiple_AND_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1652516915", "1652516915", "S08M010_CIN_OffTheBus_Main", "box_Ordered_Output_12.Out", "box_Multiple_AND_8.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_11()
  l0 = self.box_LogicGate_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|111400685", "111400685", "S08M010_CIN_OffTheBus_Main", "box_Ordered_Output_12.Out", "box_LogicGate_v2_11.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_6_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|196627310", "196627310", "S08M010_CIN_OffTheBus_Main", "box_PlaySequence_v5_6.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_6_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1285451977", "1285451977", "S08M010_CIN_OffTheBus_Main", "box_PlaySequence_v5_6.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_6_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_6
  self.HoratioNPC = l0.EntityOut.Horatio
end
function export:f_box_Teleport_To_SpawnPoint_10_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = "9223372049902757491"
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0._name = "box_GetPosition_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1805541258"
  l0.Out = self.f_box_GetPosition_16_Out
  l0 = self.box_Teleport_To_SpawnPoint_10
  l1 = Boxes[PathID("domino/System/GetPosition.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|61008333", "61008333", "S08M010_CIN_OffTheBus_Main", "box_Teleport_To_SpawnPoint_10.TeleportDone", "box_GetPosition_16.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Horatio
  l0._graph = self
  l0._name = "box_Set_Entity_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|323859069"
  l0.Out = self.f_box_Set_Entity_17_Out
  l0 = self.box_Timer_v2_7
  l1 = Boxes[PathID("domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|257656903", "257656903", "S08M010_CIN_OffTheBus_Main", "box_Timer_v2_7.TimeElapsed", "box_Set_Entity_17.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_LogicGate_v2_11_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PauseGameWhileLoading_14()
  l0 = self.box_LogicGate_v2_11
  l1 = Boxes[PathID("domino/System/PauseGameWhileLoading.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1584187444", "1584187444", "S08M010_CIN_OffTheBus_Main", "box_LogicGate_v2_11.Closed", "box_PauseGameWhileLoading_14.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_LogicGate_v2_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PauseGameWhileLoading_14()
  l0 = self.box_LogicGate_v2_11
  l1 = Boxes[PathID("domino/System/PauseGameWhileLoading.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1557940218", "1557940218", "S08M010_CIN_OffTheBus_Main", "box_LogicGate_v2_11.Out", "box_PauseGameWhileLoading_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Set_Entity_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Horatio_Out = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|550758126", "550758126", "S08M010_CIN_OffTheBus_Main", "box_Set_Entity_18.Out", "out", clone, self)
  self:out()
end
function export:f_box_Multiple_AND_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_8
  l1 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1753266226", "1753266226", "S08M010_CIN_OffTheBus_Main", "box_Multiple_AND_8.Out", "box_Timer_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_LMA_Layer_Controller_1_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|104788122"
  l0.Out = self.f_box_Simple_Node_9_Out
  l0 = self.box_LMA_Layer_Controller_1
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1022109137", "1022109137", "S08M010_CIN_OffTheBus_Main", "box_LMA_Layer_Controller_1.Loaded", "box_Simple_Node_9.In", l0, l1)
  l1:In()
end
function export:f_box_GetPosition_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self._sld_xPos_box_GetPosition_16 = l0.xPos
  self._sld_yPos_box_GetPosition_16 = l0.yPos
  self._sld_zPos_box_GetPosition_16 = l0.zPos
  self._sld_xRot_box_GetPosition_16 = l0.xRot
  self._sld_yRot_box_GetPosition_16 = l0.yRot
  self._sld_zRot_box_GetPosition_16 = l0.zRot
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.HoratioNPC
  l0.xPos = self._sld_xPos_box_GetPosition_16
  l0.yPos = self._sld_yPos_box_GetPosition_16
  l0.zPos = self._sld_zPos_box_GetPosition_16
  l0.xRot = self._sld_xRot_box_GetPosition_16
  l0.yRot = self._sld_yRot_box_GetPosition_16
  l0.zRot = self._sld_zRot_box_GetPosition_16
  l0.Additive = 0
  l0.Local = 0
  l0._graph = self
  l0._name = "box_SetPosition_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|753759779"
  l0.Out = self.f_box_SetPosition_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1748546531", "1748546531", "S08M010_CIN_OffTheBus_Main", "box_GetPosition_16.Out", "box_SetPosition_19.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:OnEnter_box_PauseGameWhileLoading_14()
  local l0
  l0 = Boxes[PathID("domino/System/PauseGameWhileLoading.lua")]
  l0._graph = self
  l0._name = "box_PauseGameWhileLoading_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\s08m010_cin_offthebus.domino|@S08M010_CIN_OffTheBus_Main|1135876685"
end
function export:OnEnter_box_LogicGate_v2_11()
end
function export:OnEnter_box_Multiple_AND_8()
end
function export:out()
end
_compilerVersion = 4
