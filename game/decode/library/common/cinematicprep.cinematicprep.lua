export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CameraRealign.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerPostFXController.lua")
  cbox:RegisterBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/PostGameOver.lua")
  cbox:RegisterBox("Domino/System/RemoveLoadingScreen.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/ToyCarController.lua")
  cbox:RegisterBox("Domino/System/WaitQualitiesLoaded.lua")
end
function export:Init(cbox)
  local l0
  self.PreOut = DummyFunction
  self.PostOut = DummyFunction
  self.ActionMap = "cinematic"
  self.LocalPawn = nil
  self.isVehicleForceStop = 0
  self[7] = cbox:CreateBox("Domino/System/CameraRealign.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  self[23] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_23_Out
  self[1] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_1_Out
  self[45] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[45]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_45_Out
  self[9] = cbox:CreateBox("Domino/System/RemoveLoadingScreen.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.LoadingScreenAlreadyRemoved = self.f_9_LoadingScreenAlreadyRemoved
  l0.LoadingScreenRemoved = self.f_9_LoadingScreenRemoved
  self[36] = cbox:CreateBox("Domino/System/WaitQualitiesLoaded.lua")
  l0 = self[36]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Loaded = self.f_36_Loaded
  self[26] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0.SetTrue = self.f_26_SetTrue
  l0.SetFalse = self.f_26_SetFalse
  l0.Toggled = self.f_26_Toggled
  l0.SetFromBool = self.f_26_SetFromBool
  self[3] = cbox:CreateBox("Domino/System/PlayerPostFXController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Played = self.f_3_Played
  l0.Stopped = DummyFunction
  self[25] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[25]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_25_Out
  self[41] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_41_Out
  self[15] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[28] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[28]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_28_Out
  self[17] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_17_Out
  self[12] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[13] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
  self[2] = cbox:CreateBox("Domino/System/PlayerPostFXController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Played = self.f_2_Played
  l0.Stopped = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/RemoveLoadingScreen.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.LoadingScreenAlreadyRemoved = self.f_10_LoadingScreenAlreadyRemoved
  l0.LoadingScreenRemoved = self.f_10_LoadingScreenRemoved
  self[11] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_11_Out
  self[42] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[42]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_42_Out
  self[14] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
  self[20] = cbox:CreateBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_20_Enter
  l0.Leave = self.f_20_Leave
  l0.ChangeSeat = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:PostCinematic()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:In()
end
function export:PreCinematic()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.ForceStopVehicle
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_46_Is_nil
  l0.Is_not_nil = self.f_46_Is_not_nil
  l0:In()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_32_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_33_Hidden
  l0:Hide()
end
function export:f_24_Is_nil()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(1)
end
function export:f_24_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipPostFX
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
function export:f_46_Is_nil()
  local l0
  self = self._graph
  l0 = self[28]
  l0:Input(0)
end
function export:f_46_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ForceStopVehicle
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_44_A_is_True
  l0.A_is_False = self.f_44_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_22_Out_0
  l0.Out[1] = self.f_22_Out_1
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SequenceName = "precinematic"
  l0:StartPostFX()
end
function export:f_16_ResetOut()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(0)
end
function export:f_6_A_is_False()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(0)
end
function export:f_6_A_is_True()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
function export:f_8_Out()
  self = self._graph
  self:PostOut()
end
function export:f_31_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PostGameOver.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:RecoverFromGameOver()
end
function export:f_5_Is_nil()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_5_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipCameraAlign
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_6_A_is_True
  l0.A_is_False = self.f_6_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
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
  l0.Is_nil = self.f_24_Is_nil
  l0.Is_not_nil = self.f_24_Is_not_nil
  l0:In()
end
function export:f_19_Is_nil()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_19_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipPostFX
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_27_A_is_True
  l0.A_is_False = self.f_27_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_30_Stopped()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(0)
end
function export:f_9_LoadingScreenAlreadyRemoved()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(0)
end
function export:f_9_LoadingScreenRemoved()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(1)
end
function export:f_36_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isVehicleForceStop
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_43_A_is_True
  l0.A_is_False = self.f_43_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[26]
  self.isVehicleForceStop = l0.Target
end
function export:f_26_SetFalse()
  local l0
  self = self._graph
  l0 = self[26]
  self.isVehicleForceStop = l0.Target
  l0 = self[23]
  l0:Input(1)
end
function export:f_26_SetFromBool()
  local l0
  self = self._graph
  l0 = self[26]
  self.isVehicleForceStop = l0.Target
end
function export:f_26_SetTrue()
  local l0
  self = self._graph
  l0 = self[26]
  self.isVehicleForceStop = l0.Target
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0.Stopped = self.f_30_Stopped
  l0.ResetOut = DummyFunction
  l0:Stop()
end
function export:f_26_Toggled()
  local l0
  self = self._graph
  l0 = self[26]
  self.isVehicleForceStop = l0.Target
end
function export:f_3_Played()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_25_Out()
  self = self._graph
  self:PreOut()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[36]
  l0.LoadingScreen = 0
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.LocalPawn = l0.PlayerID
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.SkipCameraAlign
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_5_Is_nil
  l0.Is_not_nil = self.f_5_Is_not_nil
  l0:In()
end
function export:f_40_Out_0()
  local l0
  self = self._graph
  self:en_35()
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  l0:MakeDisconnectAvailable()
end
function export:f_40_Out_1()
  local l0
  self = self._graph
  self:en_39()
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  l0:MakeDisconnectAvailable()
end
function export:f_40_Out_2()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Input(0)
end
function export:f_44_A_is_False()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(1)
end
function export:f_44_A_is_True()
  local l0
  self = self._graph
  l0 = self[28]
  l0:Input(1)
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
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
  l0.Is_nil = self.f_37_Is_nil
  l0.Is_not_nil = self.f_37_Is_not_nil
  l0:In()
end
function export:f_27_A_is_False()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_27_A_is_True()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SkipPostFx = 1
  l0:In()
end
function export:f_39_DisconnectAvailable()
  local l0
  self = self._graph
  self:en_39()
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  l0:Disconnect()
end
function export:f_39_Disconnected()
  local l0
  self = self._graph
  self:en_39()
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  l0:CallBack()
end
function export:f_28_Out()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Enable()
end
function export:f_21_A_is_False()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(0)
end
function export:f_21_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_32_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_29_Popped()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(2)
end
function export:f_43_A_is_False()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(1)
end
function export:f_43_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0.Stopped = DummyFunction
  l0.ResetOut = self.f_16_ResetOut
  l0:Reset()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_34_Popped
  l0:Pop()
end
function export:f_33_Hidden()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_35_DisconnectAvailable()
  local l0
  self = self._graph
  self:en_35()
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  l0:Disconnect()
end
function export:f_35_Disconnected()
  local l0
  self = self._graph
  self:en_35()
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  l0:CallBack()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
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
  l0.Is_nil = self.f_19_Is_nil
  l0.Is_not_nil = self.f_19_Is_not_nil
  l0:In()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Player = self.LocalPawn
  l0:Activate()
end
function export:f_34_Popped()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_2_Played()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(1)
end
function export:f_38_A_is_False()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Input(1)
end
function export:f_38_A_is_True()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Input(1)
end
function export:f_10_LoadingScreenAlreadyRemoved()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SequenceName = "postcinematic"
  l0:StartPostFX()
end
function export:f_10_LoadingScreenRemoved()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_29_Popped
  l0:Pop()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_31_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_40_Out_0
  l0.Out[1] = self.f_40_Out_1
  l0.Out[2] = self.f_40_Out_2
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.SkipPostFx = 0
  l0:In()
end
function export:f_20_Enter()
  local l0
  self = self._graph
  l0 = self[26]
  l0:True()
end
function export:f_20_Leave()
  local l0
  self = self._graph
  l0 = self[26]
  l0:False()
end
function export:f_37_Is_nil()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Input(0)
end
function export:f_37_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.KeepDrones
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_38_A_is_True
  l0.A_is_False = self.f_38_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_22_Out_0()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Disable()
end
function export:f_22_Out_1()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(0)
end
function export:en_39()
  local l0
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = self.f_39_Disconnected
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = self.f_39_DisconnectAvailable
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
end
function export:en_35()
  local l0
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = self.f_35_Disconnected
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = self.f_35_DisconnectAvailable
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.CheckNow = 1
end
function export:PreOut()
end
function export:PostOut()
end
_compilerVersion = 4
