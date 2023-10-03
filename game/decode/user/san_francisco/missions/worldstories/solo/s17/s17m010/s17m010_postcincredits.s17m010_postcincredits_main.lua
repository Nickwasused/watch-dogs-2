export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CameraRealign.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PlayerPostFXController.lua")
  cbox:RegisterBox("domino/System/PostGameOver.lua")
  cbox:RegisterBox("domino/System/RemoveLoadingScreen.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.LocalPawn = nil
  self[7] = cbox:CreateBox("domino/System/RemoveLoadingScreen.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.LoadingScreenAlreadyRemoved = self.f_7_LoadingScreenAlreadyRemoved
  l0.LoadingScreenRemoved = self.f_7_LoadingScreenRemoved
  self[18] = cbox:CreateBox("domino/System/PlayerPostFXController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Played = self.f_18_Played
  l0.Stopped = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_6_Out
  self[17] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_17_Out
  self[13] = cbox:CreateBox("domino/System/CameraRealign.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  self[9] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[14] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
  self[10] = cbox:CreateBox("domino/System/RemoveLoadingScreen.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.LoadingScreenAlreadyRemoved = self.f_10_LoadingScreenAlreadyRemoved
  l0.LoadingScreenRemoved = self.f_10_LoadingScreenRemoved
  self[11] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
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
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_7_LoadingScreenAlreadyRemoved()
  local l0
  self = self._graph
  l0 = self[18]
  l0.SequenceName = "postcinematic"
  l0:StartPostFX()
end
function export:f_7_LoadingScreenRemoved()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_15_Popped
  l0:Pop()
end
function export:f_18_Played()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PostGameOver.lua")]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0:RecoverFromGameOver()
end
function export:f_4_Popped()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Player = self.LocalPawn
  l0:Activate()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(1)
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.LocalPawn = l0.PlayerID
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
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
  l0.Is_nil = self.f_3_Is_nil
  l0.Is_not_nil = self.f_3_Is_not_nil
  l0:In()
end
function export:f_15_Popped()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(2)
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SkipPostFx = 0
  l0:In()
end
function export:f_5_A_is_False()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(0)
end
function export:f_5_A_is_True()
  local l0
  self = self._graph
  l0 = self[10]
  l0.SkipPostFx = 1
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_4_Popped
  l0:Pop()
end
function export:f_3_Is_nil()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(1)
end
function export:f_3_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipCameraAlign
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_12_A_is_True
  l0.A_is_False = self.f_12_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_16_Out()
  self = self._graph
  self:Out()
end
function export:f_12_A_is_False()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(0)
end
function export:f_12_A_is_True()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_10_LoadingScreenAlreadyRemoved()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_10_LoadingScreenRemoved()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_11_Out()
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
  l0.Is_nil = self.f_2_Is_nil
  l0.Is_not_nil = self.f_2_Is_not_nil
  l0:In()
end
function export:f_2_Is_nil()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(1)
end
function export:f_2_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipPostFX
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_5_A_is_True
  l0.A_is_False = self.f_5_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:Out()
end
_compilerVersion = 4
