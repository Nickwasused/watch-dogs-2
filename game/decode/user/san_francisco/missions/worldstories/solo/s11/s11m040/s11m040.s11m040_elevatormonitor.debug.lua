export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/915393988.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2917480546.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/713951920.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1922221619.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1877074416.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3785152517.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2010780472.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/919785047.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S11M040_ElevatorMonitor"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor"
  self.ElevatorMoved_LowPosition = DummyFunction
  self.ElevatorMoved_HighPosition = DummyFunction
  self.DoorsOpened_ColdRoom = DummyFunction
  self.DoorsClosed_ColdRoom = DummyFunction
  self.DoorsOpened_BoilerRoom = DummyFunction
  self.DoorsClosed_BoilerRoom = DummyFunction
  self.DoorsOpening_ColdRoom = DummyFunction
  self.ElevatorMoving_HighPosition = DummyFunction
  self.ElevatorMoving_LowPosition = DummyFunction
  self.DoorOpening_BoilerRoom = DummyFunction
  self.WoodenDoor_Opened = DummyFunction
  self.box_PlaySound_v2_27 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_27
  l0._graph = self
  l0._name = "box_PlaySound_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|9125379"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_27_Started
  l0.Finished = DummyFunction
  self.box_Moveable_Entity_Monitor_13 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_13
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|29014284"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = self.f_box_Moveable_Entity_Monitor_13_OnFwdMovementStarted
  l0.OnFwdMovementFinished = self.f_box_Moveable_Entity_Monitor_13_OnFwdMovementFinished
  l0.OnBkwMovementStarted = self.f_box_Moveable_Entity_Monitor_13_OnBkwMovementStarted
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_13_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_PlaySound_v2_25 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_25
  l0._graph = self
  l0._name = "box_PlaySound_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|205607628"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_25_Started
  l0.Finished = DummyFunction
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|226622903"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_Timer_v2_40 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_40
  l0._graph = self
  l0._name = "box_Timer_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|281100328"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_24 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_24
  l0._graph = self
  l0._name = "box_PlaySound_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|384727999"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Moveable_Entity_Monitor_9 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_9
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|523651099"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = self.f_box_Moveable_Entity_Monitor_9_OnFwdMovementStarted
  l0.OnFwdMovementFinished = self.f_box_Moveable_Entity_Monitor_9_OnFwdMovementFinished
  l0.OnBkwMovementStarted = self.f_box_Moveable_Entity_Monitor_9_OnBkwMovementStarted
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_9_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|638228823"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_MultipleOR_37 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_37
  l0._graph = self
  l0._name = "box_MultipleOR_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|655932296"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_37_Out
  self.box_Timer_v2_39 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_39
  l0._graph = self
  l0._name = "box_Timer_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|669493618"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_39_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_44 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_44
  l0._graph = self
  l0._name = "box_PlaySound_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|693248117"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_45 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_45
  l0._graph = self
  l0._name = "box_Timer_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|700057284"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_46 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_46
  l0._graph = self
  l0._name = "box_PlaySound_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|736548100"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_21 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_21
  l0._graph = self
  l0._name = "box_PlaySound_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|808607716"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Moveable_Entity_Monitor_8 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_8
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|834391178"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = self.f_box_Moveable_Entity_Monitor_8_OnFwdMovementStarted
  l0.OnFwdMovementFinished = self.f_box_Moveable_Entity_Monitor_8_OnFwdMovementFinished
  l0.OnBkwMovementStarted = self.f_box_Moveable_Entity_Monitor_8_OnBkwMovementStarted
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_8_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_PlaySound_v2_42 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_42
  l0._graph = self
  l0._name = "box_PlaySound_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|909752672"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_42_Started
  l0.Finished = DummyFunction
  self.box_Timer_v2_26 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_26
  l0._graph = self
  l0._name = "box_Timer_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1148684744"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1283546628"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_MultipleOR_19 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1450767823"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_MultipleOR_17 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1468124448"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1485366955"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_PlaySound_v2_23 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_23
  l0._graph = self
  l0._name = "box_PlaySound_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1667287804"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_41 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_41
  l0._graph = self
  l0._name = "box_PlaySound_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1959064241"
  l0.Out = self.f_box_PlaySound_v2_41_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_22 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_22
  l0._graph = self
  l0._name = "box_PlaySound_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2144026515"
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
function export:CloseDoors_BoilerRoom()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|361997567"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|403484912", "403484912", "S11M040_ElevatorMonitor", "CloseDoors_BoilerRoom", "box_Ordered_Output_31.In", self, l0)
  l0:In()
end
function export:CloseDoors_ColdRoom()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2001236306"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_36_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_36_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2102183648", "2102183648", "S11M040_ElevatorMonitor", "CloseDoors_ColdRoom", "box_Ordered_Output_36.In", self, l0)
  l0:In()
end
function export:MoveElevator_HighPosition()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|494363355"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_34_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_34_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2065207377", "2065207377", "S11M040_ElevatorMonitor", "MoveElevator_HighPosition", "box_Ordered_Output_34.In", self, l0)
  l0:In()
end
function export:MoveElevator_LowPosition()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1132122516"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_33_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_33_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|173264581", "173264581", "S11M040_ElevatorMonitor", "MoveElevator_LowPosition", "box_Ordered_Output_33.In", self, l0)
  l0:In()
end
function export:OpenDoors_BoilerRoom()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|714427711"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_32_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_32_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1715563981", "1715563981", "S11M040_ElevatorMonitor", "OpenDoors_BoilerRoom", "box_Ordered_Output_32.In", self, l0)
  l0:In()
end
function export:OpenDoors_ColdRoom()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|489790901"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2025241638", "2025241638", "S11M040_ElevatorMonitor", "OpenDoors_ColdRoom", "box_Ordered_Output_35.In", self, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_27_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_26
  l0.Seconds = 2.5
  l0 = self.box_PlaySound_v2_27
  l1 = self.box_Timer_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|231003894", "231003894", "S11M040_ElevatorMonitor", "box_PlaySound_v2_27.Started", "box_Timer_v2_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_Moveable_Entity_Monitor_13_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1359120220"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_Moveable_Entity_Monitor_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|795922626", "795922626", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_13.OnBkwMovementFinished", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_Moveable_Entity_Monitor_13_OnBkwMovementStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_22
  l0.Entity = "9223372061323390705"
  l0.SoundId = "soundbinary/1922221619.bnk"
  l0 = self.box_Moveable_Entity_Monitor_13
  l1 = self.box_PlaySound_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|587730540", "587730540", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_13.OnBkwMovementStarted", "box_PlaySound_v2_22.Play", l0, l1)
  l1:Play()
end
function export:f_box_Moveable_Entity_Monitor_13_OnFwdMovementFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1786425443"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  l0 = self.box_Moveable_Entity_Monitor_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1375481489", "1375481489", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_13.OnFwdMovementFinished", "box_Ordered_Output_14.In", l0, l1)
  l1:In()
end
function export:f_box_Moveable_Entity_Monitor_13_OnFwdMovementStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_21
  l0.Entity = "9223372061323390705"
  l0.SoundId = "soundbinary/2010780472.bnk"
  l0 = self.box_Moveable_Entity_Monitor_13
  l1 = self.box_PlaySound_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1540506220", "1540506220", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_13.OnFwdMovementStarted", "box_PlaySound_v2_21.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_25_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_40
  l0.Seconds = 15.8
  l0 = self.box_PlaySound_v2_25
  l1 = self.box_Timer_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|261563649", "261563649", "S11M040_ElevatorMonitor", "box_PlaySound_v2_25.Started", "box_Timer_v2_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_9()
  l0 = self.box_MultipleOR_11
  l1 = self.box_Moveable_Entity_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1460498507", "1460498507", "S11M040_ElevatorMonitor", "box_MultipleOR_11.Out", "box_Moveable_Entity_Monitor_9.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_40_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_27
  l0.SoundId = "soundbinary/919785047.bnk"
  l0 = self.box_Timer_v2_40
  l1 = self.box_PlaySound_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|693015339", "693015339", "S11M040_ElevatorMonitor", "box_Timer_v2_40.TimeElapsed", "box_PlaySound_v2_27.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|581980441", "581980441", "S11M040_ElevatorMonitor", "box_Ordered_Output_20.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|759642271", "759642271", "S11M040_ElevatorMonitor", "box_Ordered_Output_20.Out", "DoorsClosed_BoilerRoom", clone, self)
  self:DoorsClosed_BoilerRoom()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1191542071", "1191542071", "S11M040_ElevatorMonitor", "box_Ordered_Output_18.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1578676601", "1578676601", "S11M040_ElevatorMonitor", "box_Ordered_Output_18.Out", "DoorsOpened_BoilerRoom", clone, self)
  self:DoorsOpened_BoilerRoom()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1283284331", "1283284331", "S11M040_ElevatorMonitor", "box_Ordered_Output_31.Out", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_2()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1597988053", "1597988053", "S11M040_ElevatorMonitor", "box_Ordered_Output_31.Out", "box_MoveableEntityController_2.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1319219086"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_30_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_30_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|754382651", "754382651", "S11M040_ElevatorMonitor", "box_Ordered_Output_35.Out", "box_Ordered_Output_30.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_4()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1227148876", "1227148876", "S11M040_ElevatorMonitor", "box_Ordered_Output_35.Out", "box_MoveableEntityController_4.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_34_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2022554970"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_38_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_38_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|194954298", "194954298", "S11M040_ElevatorMonitor", "box_Ordered_Output_34.Out", "box_Ordered_Output_38.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_34_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_3()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|335821514", "335821514", "S11M040_ElevatorMonitor", "box_Ordered_Output_34.Out", "box_MoveableEntityController_3.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_Moveable_Entity_Monitor_9_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1324124739"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_Moveable_Entity_Monitor_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|577514808", "577514808", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_9.OnBkwMovementFinished", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_Moveable_Entity_Monitor_9_OnBkwMovementStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_Moveable_Entity_Monitor_9
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|313218925", "313218925", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_9.OnBkwMovementStarted", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Moveable_Entity_Monitor_9_OnFwdMovementFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2040041709"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_10_Out_2
  l0 = self.box_Moveable_Entity_Monitor_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|690265670", "690265670", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_9.OnFwdMovementFinished", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Moveable_Entity_Monitor_9_OnFwdMovementStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_Moveable_Entity_Monitor_9
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2128204097", "2128204097", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_9.OnFwdMovementStarted", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_13()
  l0 = self.box_MultipleOR_15
  l1 = self.box_Moveable_Entity_Monitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1519971644", "1519971644", "S11M040_ElevatorMonitor", "box_MultipleOR_15.Out", "box_Moveable_Entity_Monitor_13.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_37_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_41
  l0.SoundId = "soundbinary/713951920.bnk"
  l0 = self.box_MultipleOR_37
  l1 = self.box_PlaySound_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2143027234", "2143027234", "S11M040_ElevatorMonitor", "box_MultipleOR_37.Out", "box_PlaySound_v2_41.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_39_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_25
  l0.SoundId = "soundbinary/1877074416.bnk"
  l0 = self.box_Timer_v2_39
  l1 = self.box_PlaySound_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1219623964", "1219623964", "S11M040_ElevatorMonitor", "box_Timer_v2_39.TimeElapsed", "box_PlaySound_v2_25.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_45_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|547627677", "547627677", "S11M040_ElevatorMonitor", "box_Timer_v2_45.TimeElapsed", "WoodenDoor_Opened", l0, self)
  self:WoodenDoor_Opened()
end
function export:f_box_Ordered_Output_32_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|864908093"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_29_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_29_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1366259021", "1366259021", "S11M040_ElevatorMonitor", "box_Ordered_Output_32.Out", "box_Ordered_Output_29.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_32_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_2()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|108374241", "108374241", "S11M040_ElevatorMonitor", "box_Ordered_Output_32.Out", "box_MoveableEntityController_2.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Moveable_Entity_Monitor_8_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|316753069"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0 = self.box_Moveable_Entity_Monitor_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1972223296", "1972223296", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_8.OnBkwMovementFinished", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_Moveable_Entity_Monitor_8_OnBkwMovementStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_24
  l0.Entity = "9223372061323390707"
  l0.SoundId = "soundbinary/1922221619.bnk"
  l0 = self.box_Moveable_Entity_Monitor_8
  l1 = self.box_PlaySound_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|663678840", "663678840", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_8.OnBkwMovementStarted", "box_PlaySound_v2_24.Play", l0, l1)
  l1:Play()
end
function export:f_box_Moveable_Entity_Monitor_8_OnFwdMovementFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|339084121"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0 = self.box_Moveable_Entity_Monitor_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1845370359", "1845370359", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_8.OnFwdMovementFinished", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_Moveable_Entity_Monitor_8_OnFwdMovementStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_23
  l0.Entity = "9223372061323390707"
  l0.SoundId = "soundbinary/2010780472.bnk"
  l0 = self.box_Moveable_Entity_Monitor_8
  l1 = self.box_PlaySound_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1943478003", "1943478003", "S11M040_ElevatorMonitor", "box_Moveable_Entity_Monitor_8.OnFwdMovementStarted", "box_PlaySound_v2_23.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_29_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1284064130", "1284064130", "S11M040_ElevatorMonitor", "box_Ordered_Output_29.Out", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_29_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1720575010", "1720575010", "S11M040_ElevatorMonitor", "box_Ordered_Output_29.Out", "DoorOpening_BoilerRoom", clone, self)
  self:DoorOpening_BoilerRoom()
end
function export:f_box_Ordered_Output_28_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1435537194", "1435537194", "S11M040_ElevatorMonitor", "box_Ordered_Output_28.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_28_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|217489497", "217489497", "S11M040_ElevatorMonitor", "box_Ordered_Output_28.Out", "ElevatorMoving_LowPosition", clone, self)
  self:ElevatorMoving_LowPosition()
end
function export:f_box_Ordered_Output_28_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_44
  l0.Entity = "9223372068348216667"
  l0.SoundId = "soundbinary/915393988.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|277136378", "277136378", "S11M040_ElevatorMonitor", "box_Ordered_Output_28.Out", "box_PlaySound_v2_44.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_42_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_45
  l0.Seconds = 2.7
  l0 = self.box_PlaySound_v2_42
  l1 = self.box_Timer_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1748265011", "1748265011", "S11M040_ElevatorMonitor", "box_PlaySound_v2_42.Started", "box_Timer_v2_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_MoveableEntityController_3_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_43()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1399463427", "1399463427", "S11M040_ElevatorMonitor", "box_MoveableEntityController_3.MovedBackward", "box_MoveableEntityController_43.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_3_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_43()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|43780507", "43780507", "S11M040_ElevatorMonitor", "box_MoveableEntityController_3.MovedForward", "box_MoveableEntityController_43.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_33_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|872248906"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_28_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_28_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_28_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|414977368", "414977368", "S11M040_ElevatorMonitor", "box_Ordered_Output_33.Out", "box_Ordered_Output_28.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_33_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_3()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1910532367", "1910532367", "S11M040_ElevatorMonitor", "box_Ordered_Output_33.Out", "box_MoveableEntityController_3.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Timer_v2_26_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_42
  l0.SoundId = "soundbinary/3785152517.bnk"
  l0 = self.box_Timer_v2_26
  l1 = self.box_PlaySound_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|231607138", "231607138", "S11M040_ElevatorMonitor", "box_Timer_v2_26.TimeElapsed", "box_PlaySound_v2_42.Play", l0, l1)
  l1:Play()
end
function export:f_box_MoveableEntityController_2_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_1()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1030820478", "1030820478", "S11M040_ElevatorMonitor", "box_MoveableEntityController_2.MovedBackward", "box_MoveableEntityController_1.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_2_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_1()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1468128299", "1468128299", "S11M040_ElevatorMonitor", "box_MoveableEntityController_2.MovedForward", "box_MoveableEntityController_1.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_MoveableEntityController_4_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_5()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1516973840", "1516973840", "S11M040_ElevatorMonitor", "box_MoveableEntityController_4.MovedBackward", "box_MoveableEntityController_5.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MoveableEntityController_4_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_5()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|948818923", "948818923", "S11M040_ElevatorMonitor", "box_MoveableEntityController_4.MovedForward", "box_MoveableEntityController_5.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_13()
  l0 = self.box_MultipleOR_7
  l1 = self.box_Moveable_Entity_Monitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|407670056", "407670056", "S11M040_ElevatorMonitor", "box_MultipleOR_7.Out", "box_Moveable_Entity_Monitor_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_30_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2089747014", "2089747014", "S11M040_ElevatorMonitor", "box_Ordered_Output_30.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1373709888", "1373709888", "S11M040_ElevatorMonitor", "box_Ordered_Output_30.Out", "DoorsOpening_ColdRoom", clone, self)
  self:DoorsOpening_ColdRoom()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2094652667", "2094652667", "S11M040_ElevatorMonitor", "box_Ordered_Output_12.Out", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1059923690", "1059923690", "S11M040_ElevatorMonitor", "box_Ordered_Output_12.Out", "ElevatorMoved_HighPosition", clone, self)
  self:ElevatorMoved_HighPosition()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1007748329", "1007748329", "S11M040_ElevatorMonitor", "box_Ordered_Output_16.Out", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|581975590", "581975590", "S11M040_ElevatorMonitor", "box_Ordered_Output_16.Out", "DoorsClosed_ColdRoom", clone, self)
  self:DoorsClosed_ColdRoom()
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_8()
  l0 = self.box_MultipleOR_19
  l1 = self.box_Moveable_Entity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1241688319", "1241688319", "S11M040_ElevatorMonitor", "box_MultipleOR_19.Out", "box_Moveable_Entity_Monitor_8.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_8()
  l0 = self.box_MultipleOR_17
  l1 = self.box_Moveable_Entity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1713132344", "1713132344", "S11M040_ElevatorMonitor", "box_MultipleOR_17.Out", "box_Moveable_Entity_Monitor_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_9()
  l0 = self.box_MultipleOR_6
  l1 = self.box_Moveable_Entity_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1165193412", "1165193412", "S11M040_ElevatorMonitor", "box_MultipleOR_6.Out", "box_Moveable_Entity_Monitor_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|241015197", "241015197", "S11M040_ElevatorMonitor", "box_Ordered_Output_14.Out", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|415924077", "415924077", "S11M040_ElevatorMonitor", "box_Ordered_Output_14.Out", "DoorsOpened_ColdRoom", clone, self)
  self:DoorsOpened_ColdRoom()
end
function export:f_box_PlaySound_v2_41_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_39
  l0.Seconds = 2.7
  l0 = self.box_PlaySound_v2_41
  l1 = self.box_Timer_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1446513612", "1446513612", "S11M040_ElevatorMonitor", "box_PlaySound_v2_41.Out", "box_Timer_v2_39.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_36_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|2016825189", "2016825189", "S11M040_ElevatorMonitor", "box_Ordered_Output_36.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_36_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MoveableEntityController_4()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|114406921", "114406921", "S11M040_ElevatorMonitor", "box_Ordered_Output_36.Out", "box_MoveableEntityController_4.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_Ordered_Output_38_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|355929251", "355929251", "S11M040_ElevatorMonitor", "box_Ordered_Output_38.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_38_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1862371007", "1862371007", "S11M040_ElevatorMonitor", "box_Ordered_Output_38.Out", "ElevatorMoving_HighPosition", clone, self)
  self:ElevatorMoving_HighPosition()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|295050320", "295050320", "S11M040_ElevatorMonitor", "box_Ordered_Output_10.Out", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1936601124", "1936601124", "S11M040_ElevatorMonitor", "box_Ordered_Output_10.Out", "ElevatorMoved_LowPosition", clone, self)
  self:ElevatorMoved_LowPosition()
end
function export:f_box_Ordered_Output_10_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_46
  l0.Entity = "9223372068348216667"
  l0.SoundId = "soundbinary/2917480546.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|315645054", "315645054", "S11M040_ElevatorMonitor", "box_Ordered_Output_10.Out", "box_PlaySound_v2_46.Play", clone, l0)
  l0:Play()
end
function export:OnEnter_box_Moveable_Entity_Monitor_13()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_13
  l0.MoveableEntity = "9223372061323390705"
end
function export:OnEnter_box_MoveableEntityController_43()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390715"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|121780770"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_Moveable_Entity_Monitor_9()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_9
  l0.MoveableEntity = "9223372061323390711"
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_MultipleOR_37()
end
function export:OnEnter_box_Moveable_Entity_Monitor_8()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_8
  l0.MoveableEntity = "9223372061323390707"
end
function export:OnEnter_box_MoveableEntityController_3()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390711"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1017414669"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_3_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_3_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MoveableEntityController_2()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390709"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1272784353"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_2_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_2_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MoveableEntityController_4()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390703"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1274769214"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_4_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_4_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_MoveableEntityController_1()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390707"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1400556454"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MoveableEntityController_5()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390705"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_ElevatorMonitor|1589262279"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:ElevatorMoved_LowPosition()
end
function export:ElevatorMoved_HighPosition()
end
function export:DoorsOpened_ColdRoom()
end
function export:DoorsClosed_ColdRoom()
end
function export:DoorsOpened_BoilerRoom()
end
function export:DoorsClosed_BoilerRoom()
end
function export:DoorsOpening_ColdRoom()
end
function export:ElevatorMoving_HighPosition()
end
function export:ElevatorMoving_LowPosition()
end
function export:DoorOpening_BoilerRoom()
end
function export:WoodenDoor_Opened()
end
_compilerVersion = 4
