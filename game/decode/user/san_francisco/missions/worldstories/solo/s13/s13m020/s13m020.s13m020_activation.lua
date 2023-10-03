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
  self.OutsideGalilei_ProximityTrigger = "9223372048555627665"
  self.Player = nil
  self.VR_Skillcheck_AccessNode = "14902573570471207596"
  self.roofNodeA = "15732546531046922126"
  self.roofNodeB = "15732546531055338931"
  self.roofNodeC = "15732546531038533462"
  self.materialTestHackable = "9223372058310815332"
  self.testMaterialMesh = "9223372058310815307"
  self[11] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[12] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_12_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[9] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_9_Closed
  self[10] = cbox:CreateBox("domino/System/FlyingDroneMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = self.f_10_Enabled
  l0.Disabled = DummyFunction
  l0.OnDetected = DummyFunction
  l0.OnHidden = DummyFunction
  l0.OnSpawned = DummyFunction
  l0.OnUnSpawned = DummyFunction
  l0.OnDestroyed = DummyFunction
  l0.IsConnected = self.f_10_IsConnected
  l0.IsDisconnected = self.f_10_IsDisconnected
  l0.IsPickUp = DummyFunction
  self[14] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_14_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[5] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[23] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[21] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[21]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_21_Disabled
  l0.EnterRadius = self.f_21_EnterRadius
  l0.ExitRadius = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[20] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_20_Out
  self[4] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[4]
  l0._graph = self
  l0.StartCommunicationOut = self.f_4_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[22] = cbox:CreateBox("domino/System/InventoryMonitor.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = self.f_22_Enabled
  l0.Disabled = DummyFunction
  l0.HasItemTrue = self.f_22_HasItemTrue
  l0.HasItemFalse = self.f_22_HasItemFalse
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
  self[18] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_18_Out
  self[16] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_16_Closed
  self[13] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_13_HackSuccess
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
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_11_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In()
end
function export:f_12_HackSuccess()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(0)
end
function export:f_9_Closed()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Input(0)
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:HideNotification()
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:HideNotification()
end
function export:f_19_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Disable()
end
function export:f_19_Out_1()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Close()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0:In()
end
function export:f_10_Enabled()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Seconds = 8
  l0:Start()
end
function export:f_10_IsConnected()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Close()
end
function export:f_10_IsDisconnected()
  local l0
  self = self._graph
  l0 = self[16]
  l0:In()
end
function export:f_14_HackSuccess()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(2)
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Activation Script Running"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Enable()
end
function export:f_21_Disabled()
  local l0
  self = self._graph
  l0 = self[4]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048268129351"
  l0:StartCommunication()
end
function export:f_21_EnterRadius()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Disable()
end
function export:f_15_Out()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Enable()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Enable()
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.HackableEntity = self.roofNodeA
  l0:Enable()
end
function export:f_17_Out_2()
  local l0
  self = self._graph
  l0 = self[13]
  l0.HackableEntity = self.roofNodeB
  l0:Enable()
end
function export:f_17_Out_3()
  local l0
  self = self._graph
  l0 = self[14]
  l0.HackableEntity = self.roofNodeC
  l0:Enable()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0:In()
end
function export:f_4_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0.Out[2] = self.f_17_Out_2
  l0.Out[3] = self.f_17_Out_3
  l0:In()
end
function export:f_22_Enabled()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:HasItem()
end
function export:f_22_HasItemFalse()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Display()
end
function export:f_22_HasItemTrue()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Display()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_19_Out_0
  l0.Out[1] = self.f_19_Out_1
  l0:In()
end
function export:f_16_Closed()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Input(1)
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_13_HackSuccess()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(1)
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_RCDeploy",
    item = "Description",
    id = "341039"
  }
  l0.Duration = -1
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_RCDroneSkillCheck",
    item = "Description",
    id = "693268"
  }
  l0.Duration = -1
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.Entity1 = self.Player
  l0.Entity2 = self.VR_Skillcheck_AccessNode
  l0.Radius = 40
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.pawn = self.Player
  l0.ItemDB = "Items.9223372046063616398"
end
_compilerVersion = 4
