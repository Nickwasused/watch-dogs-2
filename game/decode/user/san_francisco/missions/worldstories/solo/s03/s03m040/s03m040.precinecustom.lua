export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerPostFXController.lua")
  cbox:RegisterBox("domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
  cbox:RegisterBox("domino/System/ToyCarController.lua")
end
function export:Init(cbox)
  local l0
  self.PreOut = DummyFunction
  self[5] = cbox:CreateBox("domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_5_Enter
  l0.Leave = self.f_5_Leave
  l0.ChangeSeat = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_16_Out
  self[17] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_17_Out
  self[2] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[6] = cbox:CreateBox("domino/System/PlayerPostFXController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Played = self.f_6_Played
  l0.Stopped = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_8_Out
  self[20] = cbox:CreateBox("domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_20_Enter
  l0.Leave = self.f_20_Leave
  l0.ChangeSeat = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
  self[13] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:PreCinematic()
  local l0
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_15_Hidden()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(0)
end
function export:f_5_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0.Stopped = self.f_11_Stopped
  l0.ResetOut = DummyFunction
  l0:Stop()
end
function export:f_5_Leave()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(1)
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_1_Out_0
  l0.Out[1] = self.f_1_Out_1
  l0:In()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.KeepDrones
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_3_Is_nil
  l0.Is_not_nil = self.f_3_Is_not_nil
  l0:In()
end
function export:f_12_ResetOut()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(0)
end
function export:f_18_A_is_False()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(0)
end
function export:f_18_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_23_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:f_6_Played()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(1)
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0.Out[2] = self.f_9_Out_2
  l0:In()
end
function export:f_4_Is_nil()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipPostFX
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_18_A_is_True
  l0.A_is_False = self.f_18_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_23_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_15_Hidden
  l0:Hide()
end
function export:f_11_Stopped()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(0)
end
function export:f_3_Is_nil()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_3_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.KeepDrones
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_21_A_is_True
  l0.A_is_False = self.f_21_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_14_Out_0()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Disable()
end
function export:f_14_Out_1()
  self = self._graph
  self:PreOut()
end
function export:f_20_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0.Stopped = DummyFunction
  l0.ResetOut = self.f_12_ResetOut
  l0:Reset()
end
function export:f_20_Leave()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(1)
end
function export:f_19_Out()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Enable()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0:CallBack()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  l0:CallBack()
end
function export:f_9_Out_2()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(0)
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SequenceName = "precinematic"
  l0:StartPostFX()
end
function export:f_21_A_is_False()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(1)
end
function export:f_21_A_is_True()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_1_Out_0()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.SkipPostFX
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_4_Is_nil
  l0.Is_not_nil = self.f_4_Is_not_nil
  l0:In()
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.CheckNow = 1
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.CheckNow = 1
end
function export:PreOut()
end
_compilerVersion = 4
