export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/GetDistance.lua")
  cbox:RegisterBox("Domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListReader.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Done = DummyFunction
  self.Listpool = {}
  self.LookForNearest = 0
  self.CurrentMaxDistance = 0
  self.Index = 0
  self.TestID = nil
  self.CurrentID = nil
  self.RefIDVAR = nil
  self.TestDist = 0
  self[1] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.SetTrue = self.f_1_SetTrue
  l0.SetFalse = self.f_1_SetFalse
  l0.Toggled = self.f_1_Toggled
  l0.SetFromBool = self.f_1_SetFromBool
  self[9] = cbox:CreateBox("Domino/System/Lists/ListReader.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.EndOfList = self.f_9_EndOfList
  self[10] = cbox:CreateBox("Domino/System/GetDistance.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.OutViaRoad = self.f_10_OutViaRoad
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:GetFurthest()
  local l0
  l0 = self[1]
  l0:False()
end
function export:GetNearest()
  local l0
  l0 = self[1]
  l0:True()
end
function export:f_14_A_gt_B()
  local l0
  self = self._graph
  self:en_18()
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0:FromFloat()
end
function export:f_14_A_le_B()
  local l0
  self = self._graph
  self:en_6()
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0:Add()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.RefIDVAR = l0.PlayerID
  self:en_2()
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0:FromList()
end
function export:f_4_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self._sld_Length_4 = l0.Length
end
function export:f_4_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self._sld_Length_4 = l0.Length
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self._sld_Length_4 = l0.Length
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self._sld_Length_4
  l0.B = self.Index
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_7_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_7_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_7_A_ge_B()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Input = self.Listpool
  l0.Index = self.Index
  l0:Read()
end
function export:f_7_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.CurrentMaxDistance = l0.Target
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.TestID
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:FromEntity()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.CurrentID = l0.Target
  self:en_6()
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0:Add()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.CurrentID
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:FromEntity()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.Index = l0.Target
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.Listpool
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.Empty = self.f_4_Empty
  l0.NotEmpty = self.f_4_NotEmpty
  l0:GetLength()
end
function export:f_16_A_ge_B()
  local l0
  self = self._graph
  self:en_6()
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0:Add()
end
function export:f_16_A_lt_B()
  local l0
  self = self._graph
  self:en_18()
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0:FromFloat()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.Index = l0.Target
  self:en_6()
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0:Add()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.CurrentMaxDistance = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.RefID
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_11_Is_nil
  l0.Is_not_nil = self.f_11_Is_not_nil
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.Listpool = l0.Target
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:FromInteger()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[1]
  self.LookForNearest = l0.Target
end
function export:f_1_SetFalse()
  local l0
  self = self._graph
  l0 = self[1]
  self.LookForNearest = l0.Target
  self:en_3()
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0:FromInteger()
end
function export:f_1_SetFromBool()
  local l0
  self = self._graph
  l0 = self[1]
  self.LookForNearest = l0.Target
end
function export:f_1_SetTrue()
  local l0
  self = self._graph
  l0 = self[1]
  self.LookForNearest = l0.Target
  self:en_3()
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0:FromFloat()
end
function export:f_1_Toggled()
  local l0
  self = self._graph
  l0 = self[1]
  self.LookForNearest = l0.Target
end
function export:f_15_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.CurrentMaxDistance
  l0.B = self.TestDist
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_16_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_16_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_15_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.CurrentMaxDistance
  l0.B = self.TestDist
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_14_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_14_A_gt_B
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_11_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_11_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.RefID
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:FromEntity()
end
function export:f_9_EndOfList()
  local l0
  self = self._graph
  l0 = self[9]
  self.TestID = l0.Data
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[9]
  self.TestID = l0.Data
  l0 = self[10]
  l0.Entity1 = self.TestID
  l0.Entity2 = self.RefIDVAR
  l0:Distance2D()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Entity = l0.Target
  self:Done()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[10]
  self.TestDist = l0.Distance
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.LookForNearest
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_15_A_is_True
  l0.A_is_False = self.f_15_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_10_OutViaRoad()
  local l0
  self = self._graph
  l0 = self[10]
  self.TestDist = l0.Distance
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.RefIDVAR = l0.Target
  self:en_2()
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0:FromList()
end
function export:en_18()
  local l0
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.TestDist
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_18_Out
end
function export:en_6()
  local l0
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Index
  l0._graph = self
  l0.Out = self.f_6_Out
end
function export:en_3()
  local l0
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 1.0E10
  l0.Integer = 0
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_3_Out
end
function export:en_2()
  local l0
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.Entities
  l0._graph = self
  l0.Out = self.f_2_Out
end
function export:Done()
end
_compilerVersion = 4
