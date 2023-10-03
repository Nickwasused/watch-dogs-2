export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/FloatArithmetics.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetPosition.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("domino/System/Lists/ListReader.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Lists/SetList.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/SetPosition.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/2070410650.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "Test_Race_CoastMountain_main_Checkpoints"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints"
  self.RaceCompleted = DummyFunction
  self.Stopped = DummyFunction
  self.NPCKilledOut = DummyFunction
  self.TimeElapsed = DummyFunction
  self.Player = nil
  self.Point = nil
  self.NextPoint = nil
  self.CheckpointsList = {}
  self.BoundToEntity_0 = "9223372043722772622"
  self.HackBike_BoundToEntity_0 = "9223372043722826301"
  self.ListLenght = 0
  self.CurIndex = 0
  self.Index = 0
  self.RemainingTime = 5
  self.myTime = 30
  self.CheckpointTimerList = {}
  self.ListLengthTimers = 0
  self.box_MultipleOR_26 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_26
  l0._graph = self
  l0._name = "box_MultipleOR_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|7042673"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_28 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_28
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|203917162"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_28_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_SwitchOutput_v3_46 = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_46
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|257597214"
  l0._DynamicAnchors = {Output = 10}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_46_Output_0
  l0.Output[1] = self.f_box_SwitchOutput_v3_46_Output_1
  l0.Output[2] = self.f_box_SwitchOutput_v3_46_Output_2
  l0.Output[3] = self.f_box_SwitchOutput_v3_46_Output_3
  l0.Output[4] = self.f_box_SwitchOutput_v3_46_Output_4
  l0.Output[5] = self.f_box_SwitchOutput_v3_46_Output_5
  l0.Output[6] = self.f_box_SwitchOutput_v3_46_Output_6
  l0.Output[7] = self.f_box_SwitchOutput_v3_46_Output_7
  l0.Output[8] = self.f_box_SwitchOutput_v3_46_Output_8
  l0.Output[9] = self.f_box_SwitchOutput_v3_46_Output_9
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_MultipleOR_59 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_59
  l0._graph = self
  l0._name = "box_MultipleOR_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|398446173"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_59_Out
  self.box_MultipleOR_31 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_31
  l0._graph = self
  l0._name = "box_MultipleOR_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|488307950"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_31_Out
  self.box_MultipleOR_58 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_58
  l0._graph = self
  l0._name = "box_MultipleOR_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|627283075"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_58_Out
  self.box_ListForEach_2 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_2
  l0._graph = self
  l0._name = "box_ListForEach_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|685594002"
  l0.Started = self.f_box_ListForEach_2_Started
  l0.Stopped = self.f_box_ListForEach_2_Stopped
  l0.ForEach = self.f_box_ListForEach_2_ForEach
  l0.GotNext = self.f_box_ListForEach_2_GotNext
  l0.EndOfList = self.f_box_ListForEach_2_EndOfList
  l0.GotFirst = DummyFunction
  self.box_LogicGate_v2_8 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_8
  l0._graph = self
  l0._name = "box_LogicGate_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|768686979"
  l0.Out = self.f_box_LogicGate_v2_8_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1083955224"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_MultipleOR_39 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_39
  l0._graph = self
  l0._name = "box_MultipleOR_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1147156299"
  l0._DynamicAnchors = {Input = 11}
  l0.Out = self.f_box_MultipleOR_39_Out
  self.box_MultipleOR_19 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1211478641"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_MultipleOR_55 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_55
  l0._graph = self
  l0._name = "box_MultipleOR_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1335331382"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_55_Out
  self.box_MultipleOR_21 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_21
  l0._graph = self
  l0._name = "box_MultipleOR_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1372053008"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_21_Out
  self.box_MultipleOR_57 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_57
  l0._graph = self
  l0._name = "box_MultipleOR_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1640704854"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_57_Out
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1667578148"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_ListReader_11 = cbox:CreateBox("domino/System/Lists/ListReader.lua")
  l0 = self.box_ListReader_11
  l0._graph = self
  l0._name = "box_ListReader_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1703952889"
  l0.Out = self.f_box_ListReader_11_Out
  l0.EndOfList = self.f_box_ListReader_11_EndOfList
  self.box_TimerToScreen_38 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_38
  l0._graph = self
  l0._name = "box_TimerToScreen_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1789710526"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_38_TimeElapsed
  self.box_PlaySound_v2_36 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_36
  l0._graph = self
  l0._name = "box_PlaySound_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1958603655"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|2061965620"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1325834104", "1325834104", "Test_Race_CoastMountain_main_Checkpoints", "In", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:NPCKilled()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1636667358"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1846220589", "1846220589", "Test_Race_CoastMountain_main_Checkpoints", "NPCKilled", "box_Ordered_Output_23.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1224673427"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_22_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1917129919", "1917129919", "Test_Race_CoastMountain_main_Checkpoints", "Stop", "box_Ordered_Output_22.In", self, l0)
  l0:In()
end
function export:f_box_Integer_Arithmetics_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.CurIndex = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListReader_11
  l0.Input = self.CheckpointsList
  l0.Index = self.CurIndex
  l0.Loop = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|916615773", "916615773", "Test_Race_CoastMountain_main_Checkpoints", "box_Integer_Arithmetics_13.Out", "box_ListReader_11.Read", clone, l0)
  l0:Read()
end
function export:f_box_TriggerMonitor_v2_28_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_28
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l1.Entity1 = l0.Collider
  l1.Entity2 = self.Player
  l1._graph = self
  l1._name = "box_Compare_Entity_v2_35"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|529688010"
  l1.Out = DummyFunction
  l1.Equal = self.f_box_Compare_Entity_v2_35_Equal
  l1.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_28
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1602791863", "1602791863", "Test_Race_CoastMountain_main_Checkpoints", "box_TriggerMonitor_v2_28.Enter", "box_Compare_Entity_v2_35.In", l0, l1)
  l1:In()
end
function export:f_box_SwitchOutput_v3_46_Output_0()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate01
  l0._graph = self
  l0._name = "box_Float_Arithmetics_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|287808906"
  l0.Out = self.f_box_Float_Arithmetics_42_Out
  l0 = self.box_SwitchOutput_v3_46
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1375991172", "1375991172", "Test_Race_CoastMountain_main_Checkpoints", "box_SwitchOutput_v3_46.Output", "box_Float_Arithmetics_42.Add", l0, l1)
  l1:Add()
end
function export:f_box_SwitchOutput_v3_46_Output_1()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate02
  l0._graph = self
  l0._name = "box_Float_Arithmetics_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1108382842"
  l0.Out = self.f_box_Float_Arithmetics_47_Out
  l0 = self.box_SwitchOutput_v3_46
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1879180152", "1879180152", "Test_Race_CoastMountain_main_Checkpoints", "box_SwitchOutput_v3_46.Output", "box_Float_Arithmetics_47.Add", l0, l1)
  l1:Add()
end
function export:f_box_SwitchOutput_v3_46_Output_2()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate03
  l0._graph = self
  l0._name = "box_Float_Arithmetics_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1021251071"
  l0.Out = self.f_box_Float_Arithmetics_45_Out
  l0 = self.box_SwitchOutput_v3_46
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|983267652", "983267652", "Test_Race_CoastMountain_main_Checkpoints", "box_SwitchOutput_v3_46.Output", "box_Float_Arithmetics_45.Add", l0, l1)
  l1:Add()
end
function export:f_box_SwitchOutput_v3_46_Output_3()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate04
  l0._graph = self
  l0._name = "box_Float_Arithmetics_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1364009584"
  l0.Out = self.f_box_Float_Arithmetics_48_Out
  l0 = self.box_SwitchOutput_v3_46
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1262126635", "1262126635", "Test_Race_CoastMountain_main_Checkpoints", "box_SwitchOutput_v3_46.Output", "box_Float_Arithmetics_48.Add", l0, l1)
  l1:Add()
end
function export:f_box_SwitchOutput_v3_46_Output_4()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate05
  l0._graph = self
  l0._name = "box_Float_Arithmetics_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1523670197"
  l0.Out = self.f_box_Float_Arithmetics_49_Out
  l0 = self.box_SwitchOutput_v3_46
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1191217305", "1191217305", "Test_Race_CoastMountain_main_Checkpoints", "box_SwitchOutput_v3_46.Output", "box_Float_Arithmetics_49.Add", l0, l1)
  l1:Add()
end
function export:f_box_SwitchOutput_v3_46_Output_5()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate06
  l0._graph = self
  l0._name = "box_Float_Arithmetics_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1955251282"
  l0.Out = self.f_box_Float_Arithmetics_50_Out
  l0 = self.box_SwitchOutput_v3_46
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|239450303", "239450303", "Test_Race_CoastMountain_main_Checkpoints", "box_SwitchOutput_v3_46.Output", "box_Float_Arithmetics_50.Add", l0, l1)
  l1:Add()
end
function export:f_box_SwitchOutput_v3_46_Output_6()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate07
  l0._graph = self
  l0._name = "box_Float_Arithmetics_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|2102278003"
  l0.Out = self.f_box_Float_Arithmetics_51_Out
  l0 = self.box_SwitchOutput_v3_46
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|755762896", "755762896", "Test_Race_CoastMountain_main_Checkpoints", "box_SwitchOutput_v3_46.Output", "box_Float_Arithmetics_51.Add", l0, l1)
  l1:Add()
end
function export:f_box_SwitchOutput_v3_46_Output_7()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate08
  l0._graph = self
  l0._name = "box_Float_Arithmetics_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|738034547"
  l0.Out = self.f_box_Float_Arithmetics_52_Out
  l0 = self.box_SwitchOutput_v3_46
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|726340911", "726340911", "Test_Race_CoastMountain_main_Checkpoints", "box_SwitchOutput_v3_46.Output", "box_Float_Arithmetics_52.Add", l0, l1)
  l1:Add()
end
function export:f_box_SwitchOutput_v3_46_Output_8()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate09
  l0._graph = self
  l0._name = "box_Float_Arithmetics_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1337913736"
  l0.Out = self.f_box_Float_Arithmetics_53_Out
  l0 = self.box_SwitchOutput_v3_46
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|954041757", "954041757", "Test_Race_CoastMountain_main_Checkpoints", "box_SwitchOutput_v3_46.Output", "box_Float_Arithmetics_53.Add", l0, l1)
  l1:Add()
end
function export:f_box_SwitchOutput_v3_46_Output_9()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate10
  l0._graph = self
  l0._name = "box_Float_Arithmetics_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1155936796"
  l0.Out = self.f_box_Float_Arithmetics_54_Out
  l0 = self.box_SwitchOutput_v3_46
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1474320099", "1474320099", "Test_Race_CoastMountain_main_Checkpoints", "box_SwitchOutput_v3_46.Output", "box_Float_Arithmetics_54.Add", l0, l1)
  l1:Add()
end
function export:f_box_Float_Arithmetics_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1385034967", "1385034967", "Test_Race_CoastMountain_main_Checkpoints", "box_Float_Arithmetics_42.Out", "box_MultipleOR_39.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Float_Arithmetics_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self._sld_Target_box_Float_Arithmetics_6 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.MapMarker
  l0.xPos = self._sld_xPos_box_GetPosition_5
  l0.yPos = self._sld_yPos_box_GetPosition_5
  l0.zPos = self._sld_Target_box_Float_Arithmetics_6
  l0.xRot = self._sld_xRot_box_GetPosition_5
  l0.yRot = self._sld_yRot_box_GetPosition_5
  l0.zRot = self._sld_zRot_box_GetPosition_5
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0._name = "box_SetPosition_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1089645636"
  l0.Out = self.f_box_SetPosition_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1549950582", "1549950582", "Test_Race_CoastMountain_main_Checkpoints", "box_Float_Arithmetics_6.Out", "box_SetPosition_4.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_8()
  l0 = self.box_LogicGate_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|807523292", "807523292", "Test_Race_CoastMountain_main_Checkpoints", "box_Simple_Node_10.Out", "box_LogicGate_v2_8.Open", clone, l0)
  l0:Open()
end
function export:f_box_MultipleOR_59_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_33()
  l0 = self.box_MultipleOR_59
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|206984546", "206984546", "Test_Race_CoastMountain_main_Checkpoints", "box_MultipleOR_59.Out", "box_VisibilityController_v2_33.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MultipleOR_31_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_55()
  l0 = self.box_MultipleOR_31
  l1 = self.box_MultipleOR_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1754487419", "1754487419", "Test_Race_CoastMountain_main_Checkpoints", "box_MultipleOR_31.Out", "box_MultipleOR_55.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Entity_v2_35_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1886136098"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_9_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_9_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_9_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|869114554", "869114554", "Test_Race_CoastMountain_main_Checkpoints", "box_Compare_Entity_v2_35.Equal", "box_Ordered_Output_9.In", clone, l0)
  l0:In()
end
function export:f_box_GetPosition_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self._sld_xPos_box_GetPosition_5 = l0.xPos
  self._sld_xPos_box_GetPosition_5 = l0.xPos
  self._sld_xPos_box_GetPosition_5 = l0.xPos
  self._sld_yPos_box_GetPosition_5 = l0.yPos
  self._sld_yPos_box_GetPosition_5 = l0.yPos
  self._sld_yPos_box_GetPosition_5 = l0.yPos
  self._sld_zPos_box_GetPosition_5 = l0.zPos
  self._sld_zPos_box_GetPosition_5 = l0.zPos
  self._sld_zPos_box_GetPosition_5 = l0.zPos
  self._sld_xRot_box_GetPosition_5 = l0.xRot
  self._sld_xRot_box_GetPosition_5 = l0.xRot
  self._sld_xRot_box_GetPosition_5 = l0.xRot
  self._sld_yRot_box_GetPosition_5 = l0.yRot
  self._sld_yRot_box_GetPosition_5 = l0.yRot
  self._sld_yRot_box_GetPosition_5 = l0.yRot
  self._sld_zRot_box_GetPosition_5 = l0.zRot
  self._sld_zRot_box_GetPosition_5 = l0.zRot
  self._sld_zRot_box_GetPosition_5 = l0.zRot
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self._sld_zPos_box_GetPosition_5
  l0.B = self.MapIconHeight
  l0._graph = self
  l0._name = "box_Float_Arithmetics_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|293540724"
  l0.Out = self.f_box_Float_Arithmetics_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|208449528", "208449528", "Test_Race_CoastMountain_main_Checkpoints", "box_GetPosition_5.Out", "box_Float_Arithmetics_6.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|224480955", "224480955", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_20.Out", "box_MultipleOR_31.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1630045642", "1630045642", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_20.Out", "box_MultipleOR_21.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_20_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1849774935"
  l0.Out = self.f_box_Simple_Node_29_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1560104935", "1560104935", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_20.Out", "box_Simple_Node_29.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_20_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_59()
  l0 = self.box_MultipleOR_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1474258637", "1474258637", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_20.Out", "box_MultipleOR_59.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_58_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_38()
  l0 = self.box_MultipleOR_58
  l1 = self.box_TimerToScreen_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1351678643", "1351678643", "Test_Race_CoastMountain_main_Checkpoints", "box_MultipleOR_58.Out", "box_TimerToScreen_38.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Set_List_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.CheckpointsList = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.CheckpointsList
  l0._graph = self
  l0._name = "box_ListLength_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|2113090258"
  l0.Out = self.f_box_ListLength_16_Out
  l0.Empty = self.f_box_ListLength_16_Empty
  l0.NotEmpty = self.f_box_ListLength_16_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|263158534", "263158534", "Test_Race_CoastMountain_main_Checkpoints", "box_Set_List_14.Out", "box_ListLength_16.GetLength", clone, l0)
  l0:GetLength()
end
function export:f_box_ListForEach_2_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_2
  self.Index = l0.Index
  self.Point = l0.Data
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|312483498"
  l0.Out = self.f_box_Simple_Node_10_Out
  l0 = self.box_ListForEach_2
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|248665101", "248665101", "Test_Race_CoastMountain_main_Checkpoints", "box_ListForEach_2.EndOfList", "box_Simple_Node_10.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_2_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_2
  self.Index = l0.Index
  self.Point = l0.Data
end
function export:f_box_ListForEach_2_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_2
  self.Index = l0.Index
  self.Point = l0.Data
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|844891743"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_12_Out_2
  l0 = self.box_ListForEach_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|456137229", "456137229", "Test_Race_CoastMountain_main_Checkpoints", "box_ListForEach_2.GotNext", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_2_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_2
  self.Index = l0.Index
  self.Point = l0.Data
end
function export:f_box_ListForEach_2_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_2
  self.Index = l0.Index
  self.Point = l0.Data
end
function export:f_box_ListLength_44_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLengthTimers = l0.Length
end
function export:f_box_ListLength_44_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLengthTimers = l0.Length
end
function export:f_box_ListLength_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLengthTimers = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = self.CheckpointRange
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1226812828"
  l0.Out = self.f_box_SetFloat_v2_40_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1226025083", "1226025083", "Test_Race_CoastMountain_main_Checkpoints", "box_ListLength_44.Out", "box_SetFloat_v2_40.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Float_Arithmetics_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|452445556", "452445556", "Test_Race_CoastMountain_main_Checkpoints", "box_Float_Arithmetics_52.Out", "box_MultipleOR_39.Input", clone, l0)
  l0:Input(8)
end
function export:f_box_LogicGate_v2_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1952808565"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_30_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_30_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_30_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_30_Out_3
  l0 = self.box_LogicGate_v2_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|33815019", "33815019", "Test_Race_CoastMountain_main_Checkpoints", "box_LogicGate_v2_8.Out", "box_Ordered_Output_30.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|351850486", "351850486", "Test_Race_CoastMountain_main_Checkpoints", "box_Simple_Node_32.Out", "box_MultipleOR_31.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = self.Point
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0._name = "box_GetPosition_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|535761872"
  l0.Out = self.f_box_GetPosition_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1615419671", "1615419671", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_12.Out", "box_GetPosition_5.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.Index
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|195651091"
  l0.Out = self.f_box_Integer_Arithmetics_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|362283636", "362283636", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_12.Out", "box_Integer_Arithmetics_13.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_12_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.Index
  l0.B = self.ListLenght
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1519539073"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_34_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1542711340", "1542711340", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_12.Out", "box_Compare_Integers_v2_34.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_24_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1854483152", "1854483152", "Test_Race_CoastMountain_main_Checkpoints", "box_Compare_Integers_v2_24.A_ge_B", "box_MultipleOR_3.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Integers_v2_24_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1826207006", "1826207006", "Test_Race_CoastMountain_main_Checkpoints", "box_Compare_Integers_v2_24.A_lt_B", "box_MultipleOR_21.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_3DGPSController_25_TargetAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_25()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|795461752", "795461752", "Test_Race_CoastMountain_main_Checkpoints", "box_3DGPSController_25.TargetAdded", "box_3DGPSController_25.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_3DGPSController_25_TargetRemoved()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1364396034", "1364396034", "Test_Race_CoastMountain_main_Checkpoints", "box_3DGPSController_25.TargetRemoved", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Float_Arithmetics_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1370617935", "1370617935", "Test_Race_CoastMountain_main_Checkpoints", "box_Float_Arithmetics_45.Out", "box_MultipleOR_39.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = self.NextPoint
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0._name = "box_GetPosition_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1496460411"
  l0.Out = self.f_box_GetPosition_18_Out
  l0 = self.box_MultipleOR_3
  l1 = Boxes[PathID("domino/System/GetPosition.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|488195517", "488195517", "Test_Race_CoastMountain_main_Checkpoints", "box_MultipleOR_3.Out", "box_GetPosition_18.In", l0, l1)
  l1:In()
end
function export:f_box_SetPosition_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.ProximityTrigger
  l0.xPos = self._sld_xPos_box_GetPosition_5
  l0.yPos = self._sld_yPos_box_GetPosition_5
  l0.zPos = self._sld_zPos_box_GetPosition_5
  l0.xRot = self._sld_xRot_box_GetPosition_5
  l0.yRot = self._sld_yRot_box_GetPosition_5
  l0.zRot = self._sld_zRot_box_GetPosition_5
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0._name = "box_SetPosition_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|2130828300"
  l0.Out = self.f_box_SetPosition_27_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|2081018649", "2081018649", "Test_Race_CoastMountain_main_Checkpoints", "box_SetPosition_4.Out", "box_SetPosition_27.In", clone, l0)
  l0:In()
end
function export:f_box_Float_Arithmetics_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|145354388", "145354388", "Test_Race_CoastMountain_main_Checkpoints", "box_Float_Arithmetics_47.Out", "box_MultipleOR_39.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_SetPosition_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1803154429", "1803154429", "Test_Race_CoastMountain_main_Checkpoints", "box_SetPosition_17.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_39_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_38()
  l0 = self.box_MultipleOR_39
  l1 = self.box_TimerToScreen_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|281767714", "281767714", "Test_Race_CoastMountain_main_Checkpoints", "box_MultipleOR_39.Out", "box_TimerToScreen_38.Start", l0, l1)
  l1:Start()
end
function export:f_box_Float_Arithmetics_54_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1189368062", "1189368062", "Test_Race_CoastMountain_main_Checkpoints", "box_Float_Arithmetics_54.Out", "box_MultipleOR_39.Input", clone, l0)
  l0:Input(10)
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|614239452"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_20_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_20_Out_3
  l0 = self.box_MultipleOR_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|674901484", "674901484", "Test_Race_CoastMountain_main_Checkpoints", "box_MultipleOR_19.Out", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|311628269", "311628269", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_22.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1537830251", "1537830251", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_22.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_Ordered_Output_22_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1046439112", "1046439112", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_22.Out", "box_MultipleOR_58.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SetFloat_v2_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.myTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1237584194"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|15740927", "15740927", "Test_Race_CoastMountain_main_Checkpoints", "box_SetFloat_v2_40.Out", "box_Ordered_Output_41.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1262991619", "1262991619", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_41.Out", "box_MultipleOR_39.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|8154289", "8154289", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_41.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_55_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_28()
  l0 = self.box_MultipleOR_55
  l1 = self.box_TriggerMonitor_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|754699633", "754699633", "Test_Race_CoastMountain_main_Checkpoints", "box_MultipleOR_55.Out", "box_TriggerMonitor_v2_28.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Float_Arithmetics_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1652127950", "1652127950", "Test_Race_CoastMountain_main_Checkpoints", "box_Float_Arithmetics_53.Out", "box_MultipleOR_39.Input", clone, l0)
  l0:Input(9)
end
function export:f_box_Float_Arithmetics_48_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|625802707", "625802707", "Test_Race_CoastMountain_main_Checkpoints", "box_Float_Arithmetics_48.Out", "box_MultipleOR_39.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_MultipleOR_21_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_21
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1232927684", "1232927684", "Test_Race_CoastMountain_main_Checkpoints", "box_MultipleOR_21.Out", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_GetPosition_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self._sld_xPos_box_GetPosition_18 = l0.xPos
  self._sld_yPos_box_GetPosition_18 = l0.yPos
  self._sld_zPos_box_GetPosition_18 = l0.zPos
  self._sld_xRot_box_GetPosition_18 = l0.xRot
  self._sld_yRot_box_GetPosition_18 = l0.yRot
  self._sld_zRot_box_GetPosition_18 = l0.zRot
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.NextMapMarker
  l0.xPos = self._sld_xPos_box_GetPosition_18
  l0.yPos = self._sld_yPos_box_GetPosition_18
  l0.zPos = self._sld_zPos_box_GetPosition_18
  l0.xRot = self._sld_xRot_box_GetPosition_18
  l0.yRot = self._sld_yRot_box_GetPosition_18
  l0.zRot = self._sld_zRot_box_GetPosition_18
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0._name = "box_SetPosition_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1145348701"
  l0.Out = self.f_box_SetPosition_17_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|912345791", "912345791", "Test_Race_CoastMountain_main_Checkpoints", "box_GetPosition_18.Out", "box_SetPosition_17.In", clone, l0)
  l0:In()
end
function export:f_box_Set_List_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.CheckpointTimerList = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.CheckpointTimerList
  l0._graph = self
  l0._name = "box_ListLength_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|687441812"
  l0.Out = self.f_box_ListLength_44_Out
  l0.Empty = self.f_box_ListLength_44_Empty
  l0.NotEmpty = self.f_box_ListLength_44_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|3013758", "3013758", "Test_Race_CoastMountain_main_Checkpoints", "box_Set_List_43.Out", "box_ListLength_44.GetLength", clone, l0)
  l0:GetLength()
end
function export:f_box_Compare_Integers_v2_34_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_33()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1773424697", "1773424697", "Test_Race_CoastMountain_main_Checkpoints", "box_Compare_Integers_v2_34.A_eq_B", "box_VisibilityController_v2_33.Show", clone, l0)
  l0:Show()
end
function export:f_box_Float_Arithmetics_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|931503816", "931503816", "Test_Race_CoastMountain_main_Checkpoints", "box_Float_Arithmetics_49.Out", "box_MultipleOR_39.Input", clone, l0)
  l0:Input(5)
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1866435135", "1866435135", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_23.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|207958602", "207958602", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_23.Out", "NPCKilledOut", clone, self)
  self:NPCKilledOut()
end
function export:f_box_MultipleOR_57_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_3DGPSController_25()
  l0 = self.box_MultipleOR_57
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|575930462", "575930462", "Test_Race_CoastMountain_main_Checkpoints", "box_MultipleOR_57.Out", "box_3DGPSController_25.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_2
  l0.List = self.CheckpointsList
  l0 = self.box_MultipleOR_7
  l1 = self.box_ListForEach_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|282198617", "282198617", "Test_Race_CoastMountain_main_Checkpoints", "box_MultipleOR_7.Out", "box_ListForEach_2.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_ListReader_11_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListReader_11
  self.NextPoint = l0.Data
end
function export:f_box_ListReader_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReader_11
  self.NextPoint = l0.Data
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.ListLenght
  l0.B = self.CurIndex
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|880069705"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_24_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_24_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0 = self.box_ListReader_11
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|574357797", "574357797", "Test_Race_CoastMountain_main_Checkpoints", "box_ListReader_11.Out", "box_Compare_Integers_v2_24.In", l0, l1)
  l1:In()
end
function export:f_box_TimerToScreen_38_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|2087226744"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_56_Out_2
  l0 = self.box_TimerToScreen_38
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|729465366", "729465366", "Test_Race_CoastMountain_main_Checkpoints", "box_TimerToScreen_38.TimeElapsed", "box_Ordered_Output_56.In", l0, l1)
  l1:In()
end
function export:f_box_SetFloat_v2_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.RemainingTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SwitchOutput_v3_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1384140358", "1384140358", "Test_Race_CoastMountain_main_Checkpoints", "box_SetFloat_v2_37.Out", "box_SwitchOutput_v3_46.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|2059860891", "2059860891", "Test_Race_CoastMountain_main_Checkpoints", "box_Simple_Node_29.Out", "box_MultipleOR_57.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SetPosition_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_28()
  l0 = self.box_TriggerMonitor_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|435742136", "435742136", "Test_Race_CoastMountain_main_Checkpoints", "box_SetPosition_15.Out", "box_TriggerMonitor_v2_28.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|305656296", "305656296", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_9.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_8()
  l0 = self.box_LogicGate_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|2068288258", "2068288258", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_9.Out", "box_LogicGate_v2_8.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_9_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_25()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|520764608", "520764608", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_9.Out", "box_3DGPSController_25.RemoveTarget", clone, l0)
  l0:RemoveTarget()
end
function export:f_box_Ordered_Output_9_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_36
  l0.SoundId = "soundbinary/2070410650.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1058322427", "1058322427", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_9.Out", "box_PlaySound_v2_36.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_9_Out_4()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TimerToScreen_38
  l1 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l1.Float = l0.RemainingTime
  l1.Integer = nil
  l1.String = nil
  l1._graph = self
  l1._name = "box_SetFloat_v2_37"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1831373323"
  l1.Out = self.f_box_SetFloat_v2_37_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|691841229", "691841229", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_9.Out", "box_SetFloat_v2_37.FromFloat", clone, l1)
  l1:FromFloat()
end
function export:f_box_Ordered_Output_30_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1635245084", "1635245084", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_30.Out", "box_MultipleOR_58.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|782280893"
  l0.Out = self.f_box_Simple_Node_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1401832297", "1401832297", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_30.Out", "box_Simple_Node_32.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_30_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_59()
  l0 = self.box_MultipleOR_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|47074282", "47074282", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_30.Out", "box_MultipleOR_59.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_30_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|2065675491", "2065675491", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_30.Out", "RaceCompleted", clone, self)
  self:RaceCompleted()
end
function export:f_box_Float_Arithmetics_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|106315355", "106315355", "Test_Race_CoastMountain_main_Checkpoints", "box_Float_Arithmetics_50.Out", "box_MultipleOR_39.Input", clone, l0)
  l0:Input(6)
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
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.Checkpoints
  l0._graph = self
  l0._name = "box_Set_List_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|683321890"
  l0.Out = self.f_box_Set_List_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|430906223", "430906223", "Test_Race_CoastMountain_main_Checkpoints", "box_Get_Player_ID_1.Out", "box_Set_List_14.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_Ordered_Output_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_55()
  l0 = self.box_MultipleOR_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|710271025", "710271025", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_56.Out", "box_MultipleOR_55.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_56_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1222867190", "1222867190", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_56.Out", "box_MultipleOR_57.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_56_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|377253638", "377253638", "Test_Race_CoastMountain_main_Checkpoints", "box_Ordered_Output_56.Out", "TimeElapsed", clone, self)
  self:TimeElapsed()
end
function export:f_box_Float_Arithmetics_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|510231273", "510231273", "Test_Race_CoastMountain_main_Checkpoints", "box_Float_Arithmetics_51.Out", "box_MultipleOR_39.Input", clone, l0)
  l0:Input(7)
end
function export:f_box_ListLength_16_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
end
function export:f_box_ListLength_16_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
end
function export:f_box_ListLength_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.CheckPoint_Timer
  l0._graph = self
  l0._name = "box_Set_List_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1503162769"
  l0.Out = self.f_box_Set_List_43_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1211112601", "1211112601", "Test_Race_CoastMountain_main_Checkpoints", "box_ListLength_16.Out", "box_Set_List_43.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_SetPosition_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.RaceRingCheckpoint
  l0.xPos = self._sld_xPos_box_GetPosition_5
  l0.yPos = self._sld_yPos_box_GetPosition_5
  l0.zPos = self._sld_zPos_box_GetPosition_5
  l0.xRot = self._sld_xRot_box_GetPosition_5
  l0.yRot = self._sld_yRot_box_GetPosition_5
  l0.zRot = self._sld_zRot_box_GetPosition_5
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0._name = "box_SetPosition_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1862791865"
  l0.Out = self.f_box_SetPosition_15_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1906946915", "1906946915", "Test_Race_CoastMountain_main_Checkpoints", "box_SetPosition_27.Out", "box_SetPosition_15.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_26()
end
function export:OnEnter_box_TriggerMonitor_v2_28()
  local l0
  l0 = self.box_TriggerMonitor_v2_28
  l0.Trigger = self.ProximityTrigger
end
function export:OnEnter_box_MultipleOR_59()
end
function export:OnEnter_box_MultipleOR_31()
end
function export:OnEnter_box_MultipleOR_58()
end
function export:OnEnter_box_LogicGate_v2_8()
  local l0
  l0 = self.box_LogicGate_v2_8
  l0.initStateOpen = 0
end
function export:OnEnter_box_3DGPSController_25()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = self.Point
  l0.Path = nil
  l0.Index = self.CurIndex
  l0.PathType = nil
  l0._graph = self
  l0._name = "box_3DGPSController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|955231937"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TargetAdded = self.f_box_3DGPSController_25_TargetAdded
  l0.TargetRemoved = self.f_box_3DGPSController_25_TargetRemoved
end
function export:OnEnter_box_MultipleOR_3()
end
function export:OnEnter_box_VisibilityController_v2_33()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RaceFinishLine
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Checkpoints|1130479819"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_39()
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_MultipleOR_55()
end
function export:OnEnter_box_MultipleOR_21()
end
function export:OnEnter_box_MultipleOR_57()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_TimerToScreen_38()
  local l0
  l0 = self.box_TimerToScreen_38
  l0.Seconds = self.myTime
end
function export:RaceCompleted()
end
function export:Stopped()
end
function export:NPCKilledOut()
end
function export:TimeElapsed()
end
_compilerVersion = 4
