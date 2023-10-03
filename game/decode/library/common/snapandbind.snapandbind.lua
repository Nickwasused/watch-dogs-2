export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/Bind_v2.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/GetPosition.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("Domino/System/SetPosition.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Attached = DummyFunction
  self.xPos = 0
  self.yPos = 0
  self.zPos = 0
  self.xRot = 0
  self.yRot = 0
  self.zRot = 0
  self.xPosOff = 0
  self.yPosOff = 0
  self.zPosOff = 0
  self.xRotOff = 0
  self.yRotOff = 0
  self.zRotOff = 0
  self.ParentIsAnNPC = 0
  self.ParentIsACar = 0
  self.bRemoveTextOnParent = 1
  self[33] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = self.f_33_Out
  l0.SetTrue = self.f_33_SetTrue
  l0.SetFalse = self.f_33_SetFalse
  l0.Toggled = self.f_33_Toggled
  l0.SetFromBool = self.f_33_SetFromBool
  self[31] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = self.f_31_Out
  l0.SetTrue = self.f_31_SetTrue
  l0.SetFalse = self.f_31_SetFalse
  l0.Toggled = self.f_31_Toggled
  l0.SetFromBool = self.f_31_SetFromBool
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Attach()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Parent
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_5_Is_nil
  l0.Is_not_nil = self.f_5_Is_not_nil
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  self.xPos = l0.xPos
  self.yPos = l0.yPos
  self.zPos = l0.zPos
  self.xRot = l0.xRot
  self.yRot = l0.yRot
  self.zRot = l0.zRot
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = nil
  l0.Child = self.Child
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = self.f_35_UnBound
  l0.Out = DummyFunction
  l0:UnBind()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.zRotOff = l0.Target
  self:en_30()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.zRotOff = l0.Target
  self:en_30()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.zPosOff = l0.Target
  self:en_10()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.xPosOff = l0.Target
  self:en_9()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_35_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = self.xPos
  l0.yPos = self.yPos
  l0.zPos = self.zPos
  l0.xRot = self.xRot
  l0.yRot = self.yRot
  l0.zRot = self.zRot
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.Parent
  l0.Child = self.Child
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_40_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_29_Bound()
  self = self._graph
  self:Attached()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.yRotOff = l0.Target
  self:en_11()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_11_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_23_Out
  l0:FromFloat()
end
function export:f_11_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.zRotOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_24_Out
  l0:FromFloat()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.Parent
  l0.Child = self.Child
  l0.BoneName = "Head"
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_29_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_25_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.CarIcon
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_28_Is_nil
  l0.Is_not_nil = self.f_28_Is_not_nil
  l0:In()
end
function export:f_25_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  l0.Entity = self.Parent
  l0.BoneName = "Head"
  l0.LocalBonePostion = nil
  l0._graph = self
  l0.Out = self.f_34_Out
  l0:In()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[33]
  self.ParentIsACar = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ParentIsACar
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_32_A_is_True
  l0.A_is_False = self.f_32_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_33_SetFalse()
  local l0
  self = self._graph
  l0 = self[33]
  self.ParentIsACar = l0.Target
end
function export:f_33_SetFromBool()
  local l0
  self = self._graph
  l0 = self[33]
  self.ParentIsACar = l0.Target
end
function export:f_33_SetTrue()
  local l0
  self = self._graph
  l0 = self[33]
  self.ParentIsACar = l0.Target
end
function export:f_33_Toggled()
  local l0
  self = self._graph
  l0 = self[33]
  self.ParentIsACar = l0.Target
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.xPosOff = l0.Target
  self:en_9()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.xRotOff = l0.Target
  self:en_12()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = nil
  l0.yPos = nil
  l0.zPos = 0
  l0.xRot = nil
  l0.yRot = nil
  l0.zRot = nil
  l0.Additive = nil
  l0.Local = nil
  l0._graph = self
  l0.Out = self.f_26_Out
  l0:In()
end
function export:f_12_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_21_Out
  l0:FromFloat()
end
function export:f_12_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.yRotOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_22_Out
  l0:FromFloat()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.Parent
  l0.Child = self.Child
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_1_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_30_Is_nil()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:False()
end
function export:f_30_Is_not_nil()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:FromBool()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = nil
  l0.yPos = nil
  l0.zPos = 0.19
  l0.xRot = nil
  l0.yRot = nil
  l0.zRot = nil
  l0.Additive = nil
  l0.Local = nil
  l0._graph = self
  l0.Out = self.f_38_Out
  l0:In()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.xRotOff = l0.Target
  self:en_12()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_36_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = self.xPos
  l0.yPos = self.yPos
  l0.zPos = self.zPos
  l0.xRot = self.xRot
  l0.yRot = self.yRot
  l0.zRot = self.zRot
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0.Out = self.f_27_Out
  l0:In()
end
function export:f_10_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:FromFloat()
end
function export:f_10_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.xRotOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:FromFloat()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.yPosOff = l0.Target
  self:en_7()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.yPosOff = l0.Target
  self:en_7()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_40_Bound()
  self = self._graph
  self:Attached()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  self.xPos = l0.xPos
  self.yPos = l0.yPos
  self.zPos = l0.zPos
  self.xRot = l0.xRot
  self.yRot = l0.yRot
  self.zRot = l0.zRot
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = nil
  l0.Child = self.Child
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = self.f_42_UnBound
  l0.Out = DummyFunction
  l0:UnBind()
end
function export:f_9_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_16_Out
  l0:FromFloat()
end
function export:f_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.yPosOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:FromFloat()
end
function export:f_32_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  l0.Entity = self.Parent
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_32_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  l0.Entity = self.Parent
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0.Out = self.f_39_Out
  l0:In()
end
function export:f_7_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:FromFloat()
end
function export:f_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.zPosOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:FromFloat()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.zPosOff = l0.Target
  self:en_10()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_6_Is_nil()
  self = self._graph
  self:Attached()
end
function export:f_6_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.xPosOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_8_Is_nil
  l0.Is_not_nil = self.f_8_Is_not_nil
  l0:In()
end
function export:f_1_Bound()
  self = self._graph
  self:Attached()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.yRotOff = l0.Target
  self:en_11()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_5_Is_nil()
  self = self._graph
  self:Attached()
end
function export:f_5_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Child
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_6_Is_nil
  l0.Is_not_nil = self.f_6_Is_not_nil
  l0:In()
end
function export:f_8_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:FromFloat()
end
function export:f_8_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.xPosOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:FromFloat()
end
function export:f_28_Is_nil()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:False()
end
function export:f_28_Is_not_nil()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:FromBool()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  self.xPos = l0.xPos
  self.yPos = l0.yPos
  self.zPos = l0.zPos
  self.xRot = l0.xRot
  self.yRot = l0.yRot
  self.zRot = l0.zRot
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = nil
  l0.Child = self.Child
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = self.f_36_UnBound
  l0.Out = DummyFunction
  l0:UnBind()
end
function export:f_42_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = self.xPos
  l0.yPos = self.yPos
  l0.zPos = self.zPos
  l0.xRot = self.xRot
  l0.yRot = self.yRot
  l0.zRot = self.zRot
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0.Out = self.f_41_Out
  l0:In()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[31]
  self.ParentIsAnNPC = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ParentIsAnNPC
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_25_A_is_True
  l0.A_is_False = self.f_25_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_31_SetFalse()
  local l0
  self = self._graph
  l0 = self[31]
  self.ParentIsAnNPC = l0.Target
end
function export:f_31_SetFromBool()
  local l0
  self = self._graph
  l0 = self[31]
  self.ParentIsAnNPC = l0.Target
end
function export:f_31_SetTrue()
  local l0
  self = self._graph
  l0 = self[31]
  self.ParentIsAnNPC = l0.Target
end
function export:f_31_Toggled()
  local l0
  self = self._graph
  l0 = self[31]
  self.ParentIsAnNPC = l0.Target
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = self.xPosOff
  l0.yPos = self.yPosOff
  l0.zPos = self.zPosOff
  l0.xRot = self.xRotOff
  l0.yRot = self.yRotOff
  l0.zRot = self.zRotOff
  l0.Additive = nil
  l0.Local = nil
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:In()
end
function export:en_11()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.zRotOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_11_Is_nil
  l0.Is_not_nil = self.f_11_Is_not_nil
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.Bool = self.CarIcon
end
function export:en_12()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.yRotOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_12_Is_nil
  l0.Is_not_nil = self.f_12_Is_not_nil
end
function export:en_30()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.NpcIcon
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_30_Is_nil
  l0.Is_not_nil = self.f_30_Is_not_nil
end
function export:en_10()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.xRotOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_10_Is_nil
  l0.Is_not_nil = self.f_10_Is_not_nil
end
function export:en_9()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.yPosOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_9_Is_nil
  l0.Is_not_nil = self.f_9_Is_not_nil
end
function export:en_7()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.zPosOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_7_Is_nil
  l0.Is_not_nil = self.f_7_Is_not_nil
end
function export:en_31()
  local l0
  l0 = self[31]
  l0.Bool = self.NpcIcon
end
function export:Attached()
end
_compilerVersion = 4
