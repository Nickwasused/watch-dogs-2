export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RandomBoolean.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.Trapped = DummyFunction
  self.TempTrapped = nil
  self.TempBool = 0
  self[1] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_1_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[3] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_3_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[2] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = self.f_2_Enabled
  l0.Disabled = self.f_2_Disabled
  l0.Enter = self.f_2_Enter
  l0.Leave = self.f_2_Leave
  l0.Use = self.f_2_Use
  self[4] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_4_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
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
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomBoolean.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_1_OnBkwMovementFinished()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_6_Out()
  self = self._graph
  self:Trapped()
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomBoolean.lua")]
  self.TempBool = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TempBool
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
function export:f_2_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_2_Enabled()
  local l0
  self = self._graph
  l0 = self[2]
  self.TempTrapped = l0.Collider
  self:Out()
end
function export:f_2_Enter()
  local l0
  self = self._graph
  l0 = self[2]
  self.TempTrapped = l0.Collider
  l0 = self[1]
  l0.MoveableEntity = self.Door
  l0.CheckNow = 1
  l0:Enable()
end
function export:f_2_Leave()
  local l0
  self = self._graph
  l0 = self[2]
  self.TempTrapped = l0.Collider
end
function export:f_2_Use()
  local l0
  self = self._graph
  l0 = self[2]
  self.TempTrapped = l0.Collider
end
function export:f_5_A_is_False()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Entity = self.TempTrapped
  l0.SoundId = self.Sound2
  l0:Start()
end
function export:f_5_A_is_True()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Entity = self.TempTrapped
  l0.SoundId = self.Sound1
  l0:Start()
end
function export:f_4_Finished()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.TriggerList = self.TriggerList
  l0.CheckNow = 1
end
function export:Out()
end
function export:Trapped()
end
_compilerVersion = 4
