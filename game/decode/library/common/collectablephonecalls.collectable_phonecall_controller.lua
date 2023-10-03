export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CollectibleMonitor.lua")
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/PhoneCallController.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.PhoneCall_Finished = DummyFunction
  self.CurrentAmount = 0
  self.TotalAmount = 0
  self[9] = cbox:CreateBox("Domino/System/CollectibleMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Has = self.f_9_Has
  l0.HasNot = DummyFunction
  l0.CollectibleGot = DummyFunction
  l0.GotCurrentAmount = self.f_9_GotCurrentAmount
  l0.GotTotalAmount = self.f_9_GotTotalAmount
  l0.GotRemainingAmount = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/PhoneCallController.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 2}
  l0.OnShown = DummyFunction
  l0.CallStarted = DummyFunction
  l0.CallStopped = DummyFunction
  l0.CallFinished = self.f_1_CallFinished
  l0.OnClosed = DummyFunction
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/PhoneCallController.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 2}
  l0.OnShown = DummyFunction
  l0.CallStarted = DummyFunction
  l0.CallStopped = DummyFunction
  l0.CallFinished = self.f_4_CallFinished
  l0.OnClosed = DummyFunction
  l0.Out = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = DummyFunction
  l0.ResetOut = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/PhoneCallController.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 2}
  l0.OnShown = DummyFunction
  l0.CallStarted = DummyFunction
  l0.CallStopped = DummyFunction
  l0.CallFinished = self.f_10_CallFinished
  l0.OnClosed = DummyFunction
  l0.Out = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:PhoneCall_Start()
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
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.CollectableList
  l0._graph = self
  l0.Is_nil = self.f_2_Is_nil
  l0.Is_not_nil = self.f_2_Is_not_nil
  l0:In()
end
function export:f_9_GotCurrentAmount()
  local l0
  self = self._graph
  l0 = self[9]
  self.CurrentAmount = l0.currentAmount
  self:en_9()
  l0:GetTotalAmount()
end
function export:f_9_GotTotalAmount()
  local l0
  self = self._graph
  l0 = self[9]
  self.TotalAmount = l0.totalAmount
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CurrentAmount
  l0.B = self.TotalAmount
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_3_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_3_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_9_Has()
  local l0
  self = self._graph
  l0 = self[9]
  self.CurrentAmount = l0.currentAmount
end
function export:f_1_CallFinished()
  self = self._graph
  self:PhoneCall_Finished()
end
function export:f_4_CallFinished()
  self = self._graph
  self:PhoneCall_Finished()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Caller = self.Caller
  l0.HeaderText = self.HeaderText
  l0.LineText = self.LineText
  l0.SoundIDList = self.SoundList_PhoneCallIntro
  l0:StartCall()
end
function export:f_6_Is_nil()
  local l0
  self = self._graph
  l0 = self[12]
  l0:In(0)
end
function export:f_6_Is_not_nil()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:GetCurrentAmount()
end
function export:f_10_CallFinished()
  self = self._graph
  self:PhoneCall_Finished()
end
function export:f_3_A_eq_B()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Caller = self.Caller
  l0.HeaderText = self.HeaderText
  l0.LineText = self.LineText
  l0.SoundIDList = self.SoundList_PhoneCallTotal
  l0:StartCall()
end
function export:f_3_A_lt_B()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Caller = self.Caller
  l0.HeaderText = self.HeaderText
  l0.LineText = self.LineText
  l0.SoundIDList = self.SoundList_PhoneCallIntro
  l0:StartCall()
end
function export:f_2_Is_nil()
  local l0
  self = self._graph
  l0 = self[12]
  l0:In(0)
end
function export:f_2_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = self.SoundList_PhoneCallTotal
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_6_Is_nil
  l0.Is_not_nil = self.f_6_Is_not_nil
  l0:In()
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.CollectibleList = self.CollectableList
end
function export:PhoneCall_Finished()
end
_compilerVersion = 4
