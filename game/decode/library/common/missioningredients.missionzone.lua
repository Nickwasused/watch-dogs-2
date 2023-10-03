export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("Domino/System/LMALayerController.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionSoftQuitController.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/ToyCarController.lua")
  cbox:LoadResource("soundbinary/2033933519.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.SoftQuitCompleted = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_5_Unloaded
  l0.Reseted = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[1] = cbox:CreateBox("Domino/System/MissionSoftQuitController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = self.f_1_Disabled
  l0.SoftQuitStarted = self.f_1_SoftQuitStarted
  l0.SoftQuitAborted = self.f_1_SoftQuitAborted
  l0.SoftQuitCompleted = self.f_1_SoftQuitCompleted
  self[8] = cbox:CreateBox("Domino/System/LMALayerController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_8_Unloaded
  self[15] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_15_Out
  self[2] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[2]
  l0._graph = self
  self[6] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[24] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_24_Out
  self[14] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
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
  self:en_3()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Disable()
end
function export:Enable()
  local l0
  self:en_3()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:UpdateProperties()
end
function export:f_5_Unloaded()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_21_ConnectAvailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
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
  l0:MakeConnectAvailable()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HardFail
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_7_A_is_True
  l0.A_is_False = self.f_7_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_19_ConnectUnavailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
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
  l0.ConnectUnavailable = self.f_20_ConnectUnavailable
  l0.Destroyed = DummyFunction
  l0:MakeConnectUnavailable()
end
function export:f_9_Is_nil()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[8]
  l0.LMALayerName = self.LmaLayer
  l0:Unload()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Condition(1)
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_3_PropertiesUpdated()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_1_Disabled()
  self = self._graph
  self:Disabled()
end
function export:f_1_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_1_SoftQuitAborted()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Input(0)
end
function export:f_1_SoftQuitCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_1_SoftQuitStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = self.f_17_Disconnected
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  l0:Disconnect()
end
function export:f_8_Unloaded()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.SoundId = "soundbinary/2033933519.bnk"
  l0:Play()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Condition(0)
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
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
  l0.ConnectAvailable = self.f_21_ConnectAvailable
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  l0:MakeConnectAvailable()
end
function export:f_18_Disconnected()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
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
  l0.ConnectUnavailable = self.f_19_ConnectUnavailable
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  l0:MakeConnectUnavailable()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = self.MissionLayer
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
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = self.LmaLayer
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_9_Is_nil
  l0.Is_not_nil = self.f_9_Is_not_nil
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_13_A_is_True()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_11_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.InstantFailOnExit
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_13_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_4_Is_nil()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[5]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_7_A_is_False()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Abort()
end
function export:f_7_A_is_True()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Fail()
end
function export:f_23_Out_0()
  self = self._graph
  self:SoftQuitCompleted()
end
function export:f_23_Out_1()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_20_ConnectUnavailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.InstantFailOnExit
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_11_Is_not_nil
  l0:In()
end
function export:f_17_Disconnected()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = self.f_18_Disconnected
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0:Disconnect()
end
function export:en_3()
  local l0
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionArea
  l0.Red = 0.784
  l0.Green = 0.824
  l0.Blue = 0.235
  l0.Alpha = 1
  l0.Radius = nil
  l0.DrawType = "Outside"
  l0.ShapeType = nil
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.PropertiesUpdated = self.f_3_PropertiesUpdated
  l0.Out = DummyFunction
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.MissionArea = self.MissionArea
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "ExitedMissionArea",
    id = "165442"
  }
end
function export:Enabled()
end
function export:Disabled()
end
function export:SoftQuitCompleted()
end
_compilerVersion = 4
