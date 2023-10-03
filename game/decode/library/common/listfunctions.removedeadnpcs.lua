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
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Filtered = DummyFunction
  self.Empty = DummyFunction
  self.Size = 0
  self.NPC = nil
  self.Current = {}
  self.HealthThreshold = 0
  self[3] = cbox:CreateBox("Domino/Library/common/ScriptFlowExtra.nOnly.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.Overflow = self.f_3_Overflow
  l0.WasReset = self.f_3_WasReset
  self[1] = cbox:CreateBox("Domino/System/Lists/ListReader.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.EndOfList = self.f_1_EndOfList
  self[7] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = self.f_7_HealthChecked
  self[9] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_9_Added
  l0.Removed = self.f_9_Removed
  l0.Out = self.f_9_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:FilterDead()
  local l0
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:FromFloat()
end
function export:FilterDown()
  local l0
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0.0125
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:FromFloat()
end
function export:f_16_Is_nil()
  local l0
  self = self._graph
  self:en_6()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_16_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.NPCList
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:FromList()
end
function export:f_3_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Read()
end
function export:f_3_Overflow()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.Current
  l0._graph = self
  l0.Out = DummyFunction
  l0.Empty = self.f_11_Empty
  l0.NotEmpty = self.f_11_NotEmpty
  l0:GetLength()
end
function export:f_3_WasReset()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:ResetRead()
end
function export:f_1_EndOfList()
  local l0
  self = self._graph
  l0 = self[1]
  self.NPC = l0.Data
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[1]
  self.NPC = l0.Data
  l0 = self[7]
  l0.Pawn = self.NPC
  l0.CheckNow = 1
  l0:CheckHealth()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  self.Size = l0.Target
  self:en_3()
  l0 = self[3]
  l0:Reset()
end
function export:f_11_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:f_11_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.Current = l0.Target
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.Current
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.Empty = self.f_4_Empty
  l0.NotEmpty = self.f_4_NotEmpty
  l0:GetLength()
end
function export:f_5_Out()
  self = self._graph
  self:Empty()
end
function export:f_7_HealthChecked()
  local l0, l1
  self = self._graph
  l0 = self[7]
  l1 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l1.A = l0.Health
  l1.B = self.HealthThreshold
  l1.Tolerance = nil
  l1._graph = self
  l1.Out = DummyFunction
  l1.A_lt_B = DummyFunction
  l1.A_le_B = self.f_8_A_le_B
  l1.A_eq_B = DummyFunction
  l1.A_ge_B = DummyFunction
  l1.A_gt_B = self.f_8_A_gt_B
  l1.A_ne_B = DummyFunction
  l1:In()
end
function export:f_6_Out()
  self = self._graph
  self:Empty()
end
function export:f_9_Added()
  local l0
  self = self._graph
  l0 = self[9]
  self.Current = l0.Target
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[9]
  self.Current = l0.Target
end
function export:f_9_Removed()
  local l0
  self = self._graph
  l0 = self[9]
  self.Current = l0.Target
  self:en_3()
  l0 = self[3]
  l0:In()
end
function export:f_4_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.Size = l0.Length
  self:en_6()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_4_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.Size = l0.Length
  l0 = Boxes[PathID("Domino/System/IntegerArithmetics.lua")]
  l0.A = self.Size
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:Sub()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  self.Size = l0.Length
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.Current
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:FromList()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.HealthThreshold = l0.Target
  self:en_16()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_8_A_gt_B()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:In()
end
function export:f_8_A_le_B()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Input = self.Current
  l0.Data[0] = self.NPC
  l0:Remove()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.HealthThreshold = l0.Target
  self:en_16()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.UpdatedList = l0.Target
  self:Filtered()
end
function export:en_16()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = self.NPCList
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_16_Is_nil
  l0.Is_not_nil = self.f_16_Is_not_nil
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Reps = self.Size
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Input = self.NPCList
end
function export:en_6()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
end
function export:Filtered()
end
function export:Empty()
end
_compilerVersion = 4
