export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListReader.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/Library/common/ScriptFlowExtra.nOnly.lua")
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/VehicleDamageHelper.lua")
end
function export:Init(cbox)
  local l0
  self.Filtered = DummyFunction
  self.Empty = DummyFunction
  self.HealthThreshold = 0
  self.Current = {}
  self.Size = 0
  self.Vehicle = nil
  self[13] = cbox:CreateBox("Domino/Library/common/ScriptFlowExtra.nOnly.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0.Overflow = self.f_13_Overflow
  l0.WasReset = self.f_13_WasReset
  self[12] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_12_Added
  l0.Removed = self.f_12_Removed
  l0.Out = self.f_12_Out
  self[15] = cbox:CreateBox("Domino/System/Lists/ListReader.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.EndOfList = self.f_15_EndOfList
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Filter()
  local l0
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:FromFloat()
end
function export:f_2_GotHealth()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleDamageHelper.lua")]
  self._sld_Health_2 = l0.Health
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self._sld_Health_2
  l0.B = self.HealthThreshold
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_4_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_4_A_gt_B
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleDamageHelper.lua")]
  self._sld_Health_2 = l0.Health
end
function export:f_13_Out()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Read()
end
function export:f_13_Overflow()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.Current
  l0._graph = self
  l0.Out = DummyFunction
  l0.Empty = self.f_14_Empty
  l0.NotEmpty = self.f_14_NotEmpty
  l0:GetLength()
end
function export:f_13_WasReset()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:ResetRead()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.HealthThreshold = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = self.VehicleList
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_9_Is_nil
  l0.Is_not_nil = self.f_9_Is_not_nil
  l0:In()
end
function export:f_12_Added()
  local l0
  self = self._graph
  l0 = self[12]
  self.Current = l0.Target
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[12]
  self.Current = l0.Target
end
function export:f_12_Removed()
  local l0
  self = self._graph
  l0 = self[12]
  self.Current = l0.Target
  self:en_13()
  l0 = self[13]
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.Size = l0.Target
  self:en_13()
  l0 = self[13]
  l0:Reset()
end
function export:f_14_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_14_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.Current = l0.Target
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.Current
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.Empty = self.f_11_Empty
  l0.NotEmpty = self.f_11_NotEmpty
  l0:GetLength()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.UpdatedList = l0.Target
  self:Filtered()
end
function export:f_8_Out()
  self = self._graph
  self:Empty()
end
function export:f_15_EndOfList()
  local l0
  self = self._graph
  l0 = self[15]
  self.Vehicle = l0.Data
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[15]
  self.Vehicle = l0.Data
  l0 = Boxes[PathID("Domino/System/VehicleDamageHelper.lua")]
  l0.Vehicle = self.Vehicle
  l0.Message = nil
  l0.MinHealthForReward = nil
  l0.MaxVehicleValue = nil
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotHealth = self.f_2_GotHealth
  l0.GotRewardPercentage = DummyFunction
  l0.GotVehicleValue = DummyFunction
  l0:GetHealth()
end
function export:f_9_Is_nil()
  local l0
  self = self._graph
  self:en_8()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.VehicleList
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:FromList()
end
function export:f_4_A_gt_B()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:In()
end
function export:f_4_A_le_B()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Input = self.Current
  l0.Data[0] = self.Vehicle
  l0:Remove()
end
function export:f_7_Out()
  self = self._graph
  self:Empty()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.Current
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:FromList()
end
function export:f_11_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.Size = l0.Length
  self:en_8()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_11_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.Size = l0.Length
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = self.Size
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:Sub()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.Size = l0.Length
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.Reps = self.Size
end
function export:en_8()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.Input = self.VehicleList
end
function export:Filtered()
end
function export:Empty()
end
_compilerVersion = 4
