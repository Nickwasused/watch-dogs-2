export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VrNodeController.lua")
end
function export:Init(cbox)
  local l0
  self.TrapHacked = DummyFunction
  self.TrapNode = "9223372049759826823"
  self.ScrambleNodes = {}
  self.RemainingTime = 0
  self.NodeToScramble = nil
  self[12] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[11] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[13] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_13_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[7] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_7_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[6] = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = self.f_6_Started
  l0.Stopped = self.f_6_Stopped
  l0.ForEach = self.f_6_ForEach
  l0.GotNext = self.f_6_GotNext
  l0.EndOfList = self.f_6_EndOfList
  l0.GotFirst = DummyFunction
  self[8] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.Started = self.f_8_Started
  l0.Stopped = self.f_8_Stopped
  l0.Paused = self.f_8_Paused
  l0.Resumed = self.f_8_Resumed
  l0.TimeElapsed = self.f_8_TimeElapsed
  l0.LoopingEnded = self.f_8_LoopingEnded
  l0.GotTime = self.f_8_GotTime
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Enable()
  local l0
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_1_NodeRotated()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Seconds = 0.06
  l0:Start()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.RemainingTime
  l0.B = 0
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_9_A_gt_B
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_11_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_9_A_gt_B()
  local l0
  self = self._graph
  l0 = self[6]
  l0.List = self.ScrambleNodesList
  l0.Loop = 1
  l0:GetNext()
end
function export:f_13_Started()
  self = self._graph
  self:TrapHacked()
end
function export:f_13_TimeElapsed()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Start()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_7_HackSuccess()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_6_EndOfList()
  local l0
  self = self._graph
  l0 = self[6]
  self.NodeToScramble = l0.Data
end
function export:f_6_ForEach()
  local l0
  self = self._graph
  l0 = self[6]
  self.NodeToScramble = l0.Data
end
function export:f_6_GotNext()
  local l0
  self = self._graph
  l0 = self[6]
  self.NodeToScramble = l0.Data
  l0 = Boxes[PathID("domino/System/VrNodeController.lua")]
  l0.VRNode = self.NodeToScramble
  l0.AlarmTime = nil
  l0._graph = self
  l0.IsSetAsAlarm = DummyFunction
  l0.IsUnSetAsAlarm = DummyFunction
  l0.NodeRotated = self.f_1_NodeRotated
  l0.Out = DummyFunction
  l0:RotateNode()
end
function export:f_6_Started()
  local l0
  self = self._graph
  l0 = self[6]
  self.NodeToScramble = l0.Data
end
function export:f_6_Stopped()
  local l0
  self = self._graph
  l0 = self[6]
  self.NodeToScramble = l0.Data
end
function export:f_8_GotTime()
  local l0
  self = self._graph
  l0 = self[8]
  self.RemainingTime = l0.RemainingTime
  l0 = self[12]
  l0:In()
end
function export:f_8_LoopingEnded()
  local l0
  self = self._graph
  l0 = self[8]
  self.RemainingTime = l0.RemainingTime
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.RemainingTime = l0.RemainingTime
end
function export:f_8_Paused()
  local l0
  self = self._graph
  l0 = self[8]
  self.RemainingTime = l0.RemainingTime
end
function export:f_8_Resumed()
  local l0
  self = self._graph
  l0 = self[8]
  self.RemainingTime = l0.RemainingTime
end
function export:f_8_Started()
  local l0
  self = self._graph
  l0 = self[8]
  self.RemainingTime = l0.RemainingTime
  l0 = self[10]
  l0:Input(0)
end
function export:f_8_Stopped()
  local l0
  self = self._graph
  l0 = self[8]
  self.RemainingTime = l0.RemainingTime
end
function export:f_8_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[8]
  self.RemainingTime = l0.RemainingTime
  l0 = self[12]
  l0:Close()
end
function export:f_10_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:GetTime()
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.HackableEntity = self.TrapNodeIn
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.Seconds = 3
end
function export:TrapHacked()
end
_compilerVersion = 4
