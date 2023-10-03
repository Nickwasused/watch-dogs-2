export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/FlyingDroneMonitor.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/InventoryMonitor.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S13M020_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation"
  self.OutsideGalilei_ProximityTrigger = "9223372048555627665"
  self.Player = nil
  self.VR_Skillcheck_AccessNode = "14902573570471207596"
  self.roofNodeA = "15732546531046922126"
  self.roofNodeB = "15732546531055338931"
  self.roofNodeC = "15732546531038533462"
  self.materialTestHackable = "9223372058310815332"
  self.testMaterialMesh = "9223372058310815307"
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|94080076"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_12 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_12
  l0._graph = self
  l0._name = "box_Hackable_Monitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|363978993"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_12_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_LogicGate_v2_9 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_9
  l0._graph = self
  l0._name = "box_LogicGate_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|427621190"
  l0.Out = self.f_box_LogicGate_v2_9_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_9_Closed
  self.box_Flying_Drone_Monitor_10 = cbox:CreateBox("domino/System/FlyingDroneMonitor.lua")
  l0 = self.box_Flying_Drone_Monitor_10
  l0._graph = self
  l0._name = "box_Flying_Drone_Monitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|863806215"
  l0.Enabled = self.f_box_Flying_Drone_Monitor_10_Enabled
  l0.Disabled = DummyFunction
  l0.OnDetected = DummyFunction
  l0.OnHidden = DummyFunction
  l0.OnSpawned = DummyFunction
  l0.OnUnSpawned = DummyFunction
  l0.OnDestroyed = DummyFunction
  l0.IsConnected = self.f_box_Flying_Drone_Monitor_10_IsConnected
  l0.IsDisconnected = self.f_box_Flying_Drone_Monitor_10_IsDisconnected
  l0.IsPickUp = DummyFunction
  self.box_Hackable_Monitor_14 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_14
  l0._graph = self
  l0._name = "box_Hackable_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1015810303"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_14_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_TutorialController_5 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_5
  l0._graph = self
  l0._name = "box_TutorialController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1039215333"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_TutorialController_23 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_23
  l0._graph = self
  l0._name = "box_TutorialController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1160738271"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Proximity_Monitor_21 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_21
  l0._graph = self
  l0._name = "box_Proximity_Monitor_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1287332021"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_21_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_21_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1324298160"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_MultipleOR_20 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_20
  l0._graph = self
  l0._name = "box_MultipleOR_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1491822890"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_20_Out
  self.box_PhoneCommunicationController_4 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_4
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1730119767"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_4_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_InventoryMonitor_22 = cbox:CreateBox("domino/System/InventoryMonitor.lua")
  l0 = self.box_InventoryMonitor_22
  l0._graph = self
  l0._name = "box_InventoryMonitor_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1741787497"
  l0.Enabled = self.f_box_InventoryMonitor_22_Enabled
  l0.Disabled = DummyFunction
  l0.HasItemTrue = self.f_box_InventoryMonitor_22_HasItemTrue
  l0.HasItemFalse = self.f_box_InventoryMonitor_22_HasItemFalse
  l0.InWheelTrue = DummyFunction
  l0.InWheelFalse = DummyFunction
  l0.OnAnyItemAdded = DummyFunction
  l0.OnWeaponAdded = DummyFunction
  l0.OnItemAdded = DummyFunction
  l0.OnItemNotAdded = DummyFunction
  l0.OnItemRemoved = DummyFunction
  l0.OnItemEquipped = DummyFunction
  l0.False = DummyFunction
  l0.True = DummyFunction
  self.box_MultipleOR_18 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1803492136"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_LogicGate_v2_16 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_16
  l0._graph = self
  l0._name = "box_LogicGate_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1943254664"
  l0.Out = self.f_box_LogicGate_v2_16_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_16_Closed
  self.box_Hackable_Monitor_13 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_13
  l0._graph = self
  l0._name = "box_Hackable_Monitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|2136701444"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_13_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
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
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|506621739"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|368240663", "368240663", "S13M020_Activation", "In", "box_Get_Player_ID_6.In", self, l0)
  l0:In()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_9()
  l0 = self.box_Timer_v2_11
  l1 = self.box_LogicGate_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1316632217", "1316632217", "S13M020_Activation", "box_Timer_v2_11.TimeElapsed", "box_LogicGate_v2_9.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_12_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_Hackable_Monitor_12
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1952310666", "1952310666", "S13M020_Activation", "box_Hackable_Monitor_12.HackSuccess", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LogicGate_v2_9_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_LogicGate_v2_9
  l1 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1074437615", "1074437615", "S13M020_Activation", "box_LogicGate_v2_9.Closed", "box_MultipleOR_20.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LogicGate_v2_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_LogicGate_v2_9
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|483598117", "483598117", "S13M020_Activation", "box_LogicGate_v2_9.Out", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_5()
  l0 = self.box_TutorialController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|42101019", "42101019", "S13M020_Activation", "box_Ordered_Output_24.Out", "box_TutorialController_5.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_23()
  l0 = self.box_TutorialController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1966548004", "1966548004", "S13M020_Activation", "box_Ordered_Output_24.Out", "box_TutorialController_23.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Flying_Drone_Monitor_10()
  l0 = self.box_Flying_Drone_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|481403839", "481403839", "S13M020_Activation", "box_Ordered_Output_19.Out", "box_Flying_Drone_Monitor_10.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_19_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_16()
  l0 = self.box_LogicGate_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|970410953", "970410953", "S13M020_Activation", "box_Ordered_Output_19.Out", "box_LogicGate_v2_16.Close", clone, l0)
  l0:Close()
end
function export:f_box_Get_Player_ID_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1046214720"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|163331678", "163331678", "S13M020_Activation", "box_Get_Player_ID_6.Out", "box_Ordered_Output_7.In", clone, l0)
  l0:In()
end
function export:f_box_Flying_Drone_Monitor_10_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_11
  l0.Seconds = 8
  l0 = self.box_Flying_Drone_Monitor_10
  l1 = self.box_Timer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1466600063", "1466600063", "S13M020_Activation", "box_Flying_Drone_Monitor_10.Enabled", "box_Timer_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_Flying_Drone_Monitor_10_IsConnected()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_9()
  l0 = self.box_Flying_Drone_Monitor_10
  l1 = self.box_LogicGate_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|2046034291", "2046034291", "S13M020_Activation", "box_Flying_Drone_Monitor_10.IsConnected", "box_LogicGate_v2_9.Close", l0, l1)
  l1:Close()
end
function export:f_box_Flying_Drone_Monitor_10_IsDisconnected()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_16()
  l0 = self.box_Flying_Drone_Monitor_10
  l1 = self.box_LogicGate_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1417734632", "1417734632", "S13M020_Activation", "box_Flying_Drone_Monitor_10.IsDisconnected", "box_LogicGate_v2_16.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_14_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_Hackable_Monitor_14
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|123651741", "123651741", "S13M020_Activation", "box_Hackable_Monitor_14.HackSuccess", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Activation Script Running"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1233504021"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|836028055", "836028055", "S13M020_Activation", "box_Ordered_Output_7.Out", "box_TextToScreen_v2_2.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_21()
  l0 = self.box_Proximity_Monitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1691444029", "1691444029", "S13M020_Activation", "box_Ordered_Output_7.Out", "box_Proximity_Monitor_21.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Proximity_Monitor_21_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_4
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048268129351"
  l0 = self.box_Proximity_Monitor_21
  l1 = self.box_PhoneCommunicationController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|122139607", "122139607", "S13M020_Activation", "box_Proximity_Monitor_21.Disabled", "box_PhoneCommunicationController_4.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Proximity_Monitor_21_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_21()
  l0 = self.box_Proximity_Monitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|590932175", "590932175", "S13M020_Activation", "box_Proximity_Monitor_21.EnterRadius", "box_Proximity_Monitor_21.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InventoryMonitor_22()
  l0 = self.box_MultipleOR_15
  l1 = self.box_InventoryMonitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|776426899", "776426899", "S13M020_Activation", "box_MultipleOR_15.Out", "box_InventoryMonitor_22.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Flying_Drone_Monitor_10()
  l0 = self.box_Flying_Drone_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1494415943", "1494415943", "S13M020_Activation", "box_Ordered_Output_17.Out", "box_Flying_Drone_Monitor_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_12
  l0.HackableEntity = self.roofNodeA
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|2105809034", "2105809034", "S13M020_Activation", "box_Ordered_Output_17.Out", "box_Hackable_Monitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_17_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_13
  l0.HackableEntity = self.roofNodeB
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|900096523", "900096523", "S13M020_Activation", "box_Ordered_Output_17.Out", "box_Hackable_Monitor_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_17_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_14
  l0.HackableEntity = self.roofNodeC
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1353648972", "1353648972", "S13M020_Activation", "box_Ordered_Output_17.Out", "box_Hackable_Monitor_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_20_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|445013090"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0 = self.box_MultipleOR_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|891207604", "891207604", "S13M020_Activation", "box_MultipleOR_20.Out", "box_Ordered_Output_24.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_4_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1439798421"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_17_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_17_Out_3
  l0 = self.box_PhoneCommunicationController_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|2133937576", "2133937576", "S13M020_Activation", "box_PhoneCommunicationController_4.StartCommunicationOut", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_InventoryMonitor_22_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_InventoryMonitor_22()
  l0 = self.box_InventoryMonitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|944492785", "944492785", "S13M020_Activation", "box_InventoryMonitor_22.Enabled", "box_InventoryMonitor_22.HasItem", l0, l0)
  l0:HasItem()
end
function export:f_box_InventoryMonitor_22_HasItemFalse()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_23()
  l0 = self.box_InventoryMonitor_22
  l1 = self.box_TutorialController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1982141973", "1982141973", "S13M020_Activation", "box_InventoryMonitor_22.HasItemFalse", "box_TutorialController_23.Display", l0, l1)
  l1:Display()
end
function export:f_box_InventoryMonitor_22_HasItemTrue()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_5()
  l0 = self.box_InventoryMonitor_22
  l1 = self.box_TutorialController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|584971708", "584971708", "S13M020_Activation", "box_InventoryMonitor_22.HasItemTrue", "box_TutorialController_5.Display", l0, l1)
  l1:Display()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|495852968"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_19_Out_1
  l0 = self.box_MultipleOR_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|191711069", "191711069", "S13M020_Activation", "box_MultipleOR_18.Out", "box_Ordered_Output_19.In", l0, l1)
  l1:In()
end
function export:f_box_LogicGate_v2_16_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_LogicGate_v2_16
  l1 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|749321512", "749321512", "S13M020_Activation", "box_LogicGate_v2_16.Closed", "box_MultipleOR_20.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LogicGate_v2_16_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_LogicGate_v2_16
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1480494776", "1480494776", "S13M020_Activation", "box_LogicGate_v2_16.Out", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Hackable_Monitor_13_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_Hackable_Monitor_13
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M020\\S13M020.domino|@S13M020_Activation|1698095331", "1698095331", "S13M020_Activation", "box_Hackable_Monitor_13.HackSuccess", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_LogicGate_v2_9()
end
function export:OnEnter_box_Flying_Drone_Monitor_10()
end
function export:OnEnter_box_TutorialController_5()
  local l0
  l0 = self.box_TutorialController_5
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_RCDeploy",
    item = "Description",
    id = "341039"
  }
  l0.Duration = -1
end
function export:OnEnter_box_TutorialController_23()
  local l0
  l0 = self.box_TutorialController_23
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_RCDroneSkillCheck",
    item = "Description",
    id = "693268"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Proximity_Monitor_21()
  local l0
  l0 = self.box_Proximity_Monitor_21
  l0.Entity1 = self.Player
  l0.Entity2 = self.VR_Skillcheck_AccessNode
  l0.Radius = 40
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_MultipleOR_20()
end
function export:OnEnter_box_InventoryMonitor_22()
  local l0
  l0 = self.box_InventoryMonitor_22
  l0.pawn = self.Player
  l0.ItemDB = "Items.9223372046063616398"
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_LogicGate_v2_16()
end
_compilerVersion = 4
