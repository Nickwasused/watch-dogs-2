export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/GetDistance.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListReader.lua")
  cbox:RegisterBox("Domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.InsideRadius = DummyFunction
  self.OutsideRadius = DummyFunction
  self.Disabled = DummyFunction
  self.Pawn = nil
  self.RefID = nil
  self[5] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_5_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/Lists/ListReader.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.EndOfList = self.f_1_EndOfList
  self[18] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_18_Out_0
  l0.ResetOut = DummyFunction
  self[7] = cbox:CreateBox("Domino/System/LogicGate_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.Opened = self.f_7_Opened
  l0.Closed = self.f_7_Closed
  self[17] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/GetDistance.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.OutViaRoad = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_19_Out_0
  l0.ResetOut = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Check()
  local l0
  l0 = self[19]
  l0:Reset()
  l0 = self[18]
  l0:Reset()
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.PawnList
  l0._graph = self
  l0.Out = DummyFunction
  l0.Empty = self.f_22_Empty
  l0.NotEmpty = self.f_22_NotEmpty
  l0:GetLength()
end
function export:Continuous()
  local l0
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.PawnList
  l0._graph = self
  l0.Out = DummyFunction
  l0.Empty = self.f_23_Empty
  l0.NotEmpty = self.f_23_NotEmpty
  l0:GetLength()
end
function export:Disable()
  local l0
  self:en_7()
  l0 = self[7]
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.CloseID = l0.Target
  self:en_17()
  l0 = self[17]
  l0:Stop()
  l0 = self[18]
  l0:In(0)
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.RefID = l0.PlayerID
  self:en_16()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_23_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "PawnList is empty"
  l0.Duration = 5
  l0.Color = "Red"
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_23_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Reference
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_13_Is_nil
  l0.Is_not_nil = self.f_13_Is_not_nil
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.RefID = l0.Target
  self:en_12()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_12_Out()
  local l0
  self = self._graph
  self:en_9()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_16_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Open()
end
function export:f_5_Stopped()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Close()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  self:en_9()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_8_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_8_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Reference
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:FromEntity()
end
function export:f_13_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:In()
end
function export:f_13_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Reference
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:FromEntity()
end
function export:f_3_A_ge_B()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Read()
end
function export:f_3_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Pawn
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:FromEntity()
end
function export:f_1_EndOfList()
  local l0
  self = self._graph
  l0 = self[1]
  self.Pawn = l0.Data
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[1]
  self.Pawn = l0.Data
  l0 = self[2]
  l0.Entity1 = self.Pawn
  l0.Entity2 = self.RefID
  l0:Distance2D()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Reset()
  self:InsideRadius()
end
function export:f_7_Closed()
  self = self._graph
  self:Disabled()
end
function export:f_7_Opened()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Start()
end
function export:f_7_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Stop()
end
function export:f_17_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[19]
  l0:In(0)
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.RefID = l0.Target
  self:en_16()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_22_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "PawnList is empty"
  l0.Duration = 5
  l0.Color = "Red"
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_22_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Reference
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
function export:f_9_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:ResetRead()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.RefID = l0.PlayerID
  self:en_12()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_2_Out()
  local l0, l1
  self = self._graph
  l0 = self[2]
  l1 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l1.A = l0.Distance
  l1.B = self.Radius
  l1.Tolerance = nil
  l1._graph = self
  l1.Out = DummyFunction
  l1.A_lt_B = self.f_3_A_lt_B
  l1.A_le_B = DummyFunction
  l1.A_eq_B = DummyFunction
  l1.A_ge_B = self.f_3_A_ge_B
  l1.A_gt_B = DummyFunction
  l1.A_ne_B = DummyFunction
  l1:In()
end
function export:f_19_Out_0()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Reset()
  self:OutsideRadius()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Start()
end
function export:en_12()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
end
function export:en_16()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_16_Out
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.Seconds = 0.25
  l0.Loop = 1
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Input = self.PawnList
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.initStateOpen = 0
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.Seconds = 0.1
end
function export:en_9()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_9_Out
end
function export:InsideRadius()
end
function export:OutsideRadius()
end
function export:Disabled()
end
_compilerVersion = 4
