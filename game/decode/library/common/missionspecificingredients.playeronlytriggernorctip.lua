export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/FlyingDroneMonitor.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/ToyCarMonitor.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self.Enter = DummyFunction
  self.Player = nil
  self.InDrone = 0
  self.In_Jumper = 0
  self.Inside = 0
  self.Collider = nil
  self[8] = cbox:CreateBox("Domino/System/ToyCarMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = self.f_8_Enabled
  l0.Disabled = self.f_8_Disabled
  l0.OnDetected = DummyFunction
  l0.OnHidden = DummyFunction
  l0.OnSpawned = DummyFunction
  l0.OnUnSpawned = DummyFunction
  l0.IsConnected = self.f_8_IsConnected
  l0.IsDisconnected = self.f_8_IsDisconnected
  l0.IsPickUp = DummyFunction
  l0.StunWasUsed = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_1_Enter
  l0.Leave = self.f_1_Leave
  l0.Use = self.f_1_Use
  self[3] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.SetTrue = self.f_3_SetTrue
  l0.SetFalse = self.f_3_SetFalse
  l0.Toggled = self.f_3_Toggled
  l0.SetFromBool = self.f_3_SetFromBool
  self[14] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
  self[10] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[9] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.SetTrue = self.f_9_SetTrue
  l0.SetFalse = self.f_9_SetFalse
  l0.Toggled = self.f_9_Toggled
  l0.SetFromBool = self.f_9_SetFromBool
  self[2] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_2_Out
  self[5] = cbox:CreateBox("Domino/System/FlyingDroneMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = self.f_5_Enabled
  l0.Disabled = self.f_5_Disabled
  l0.OnDetected = DummyFunction
  l0.OnHidden = DummyFunction
  l0.OnSpawned = DummyFunction
  l0.OnUnSpawned = DummyFunction
  l0.IsConnected = self.f_5_IsConnected
  l0.IsDisconnected = self.f_5_IsDisconnected
  l0.IsPickUp = DummyFunction
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
  l0 = self[10]
  l0:Input(1)
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_17_notA_and_notB()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(1)
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_7_Out_1()
  self = self._graph
  self:Enter()
end
function export:f_7_Out_2()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(0)
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_8_Enabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_8_IsConnected()
  local l0
  self = self._graph
  l0 = self[9]
  l0:True()
end
function export:f_8_IsDisconnected()
  local l0
  self = self._graph
  l0 = self[9]
  l0:False()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_19_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0.Out[2] = self.f_7_Out_2
  l0:In()
end
function export:f_19_NotEqual()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Display()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_1_Enabled()
  local l0
  self = self._graph
  l0 = self[1]
  self.Collider = l0.Collider
end
function export:f_1_Enter()
  local l0
  self = self._graph
  l0 = self[1]
  self.Collider = l0.Collider
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Collider
  l0.Entity2 = self.Player
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_19_Equal
  l0.NotEqual = self.f_19_NotEqual
  l0:In()
end
function export:f_1_Leave()
  local l0
  self = self._graph
  l0 = self[1]
  self.Collider = l0.Collider
  l0 = self[2]
  l0:Input(2)
end
function export:f_1_Use()
  local l0
  self = self._graph
  l0 = self[1]
  self.Collider = l0.Collider
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[3]
  self.InDrone = l0.Target
end
function export:f_3_SetFalse()
  local l0
  self = self._graph
  l0 = self[3]
  self.InDrone = l0.Target
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_3_SetFromBool()
  local l0
  self = self._graph
  l0 = self[3]
  self.InDrone = l0.Target
end
function export:f_3_SetTrue()
  local l0
  self = self._graph
  l0 = self[3]
  self.InDrone = l0.Target
end
function export:f_3_Toggled()
  local l0
  self = self._graph
  l0 = self[3]
  self.InDrone = l0.Target
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.InDrone
  l0.B = self.In_Jumper
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = self.f_17_notA_and_notB
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[9]
  self.In_Jumper = l0.Target
end
function export:f_9_SetFalse()
  local l0
  self = self._graph
  l0 = self[9]
  self.In_Jumper = l0.Target
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:In()
end
function export:f_9_SetFromBool()
  local l0
  self = self._graph
  l0 = self[9]
  self.In_Jumper = l0.Target
end
function export:f_9_SetTrue()
  local l0
  self = self._graph
  l0 = self[9]
  self.In_Jumper = l0.Target
end
function export:f_9_Toggled()
  local l0
  self = self._graph
  l0 = self[9]
  self.In_Jumper = l0.Target
end
function export:f_2_Out()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:HideNotification()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_5_Enabled()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_5_IsConnected()
  local l0
  self = self._graph
  l0 = self[3]
  l0:True()
end
function export:f_5_IsDisconnected()
  local l0
  self = self._graph
  l0 = self[3]
  l0:False()
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.CheckNow = 1
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_MarcusOnlyInteraction",
    item = "Description",
    id = "698586"
  }
  l0.Duration = -1
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Trigger = self.Trigger
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.CheckNow = 1
end
function export:Enter()
end
_compilerVersion = 4
