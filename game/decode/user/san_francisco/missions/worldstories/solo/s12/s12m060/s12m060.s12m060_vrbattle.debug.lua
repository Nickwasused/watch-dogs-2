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
  self._name = "S12M060_VRBattle"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle"
  self.TrapHacked = DummyFunction
  self.TrapNode = "9223372049759826823"
  self.ScrambleNodes = {}
  self.RemainingTime = 0
  self.NodeToScramble = nil
  self.box_LogicGate_v2_12 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_12
  l0._graph = self
  l0._name = "box_LogicGate_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|495225684"
  l0.Out = self.f_box_LogicGate_v2_12_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|994651635"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_13 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_13
  l0._graph = self
  l0._name = "box_Timer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|1274171521"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_13_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_7 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_7
  l0._graph = self
  l0._name = "box_Hackable_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|1650050104"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_7_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_7_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_ListForEach_6 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_6
  l0._graph = self
  l0._name = "box_ListForEach_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|1811508080"
  l0.Started = self.f_box_ListForEach_6_Started
  l0.Stopped = self.f_box_ListForEach_6_Stopped
  l0.ForEach = self.f_box_ListForEach_6_ForEach
  l0.GotNext = self.f_box_ListForEach_6_GotNext
  l0.EndOfList = self.f_box_ListForEach_6_EndOfList
  l0.GotFirst = DummyFunction
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|1850954773"
  l0.Out = self.f_box_Timer_v2_8_Out
  l0.Started = self.f_box_Timer_v2_8_Started
  l0.Stopped = self.f_box_Timer_v2_8_Stopped
  l0.Paused = self.f_box_Timer_v2_8_Paused
  l0.Resumed = self.f_box_Timer_v2_8_Resumed
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
  l0.LoopingEnded = self.f_box_Timer_v2_8_LoopingEnded
  l0.GotTime = self.f_box_Timer_v2_8_GotTime
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|1928064133"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
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
  self:OnEnter_box_Hackable_Monitor_7()
  l0 = self.box_Hackable_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|325243551", "325243551", "S12M060_VRBattle", "Enable", "box_Hackable_Monitor_7.Enable", self, l0)
  l0:Enable()
end
function export:f_box_VrNodeController_1_NodeRotated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VrNodeController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_11
  l0.Seconds = 0.06
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|869879753", "869879753", "S12M060_VRBattle", "box_VrNodeController_1.NodeRotated", "box_Timer_v2_11.Start", clone, l0)
  l0:Start()
end
function export:f_box_LogicGate_v2_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.RemainingTime
  l0.B = 0
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|1225598413"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Floats_v2_9_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_LogicGate_v2_12
  l1 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|416167168", "416167168", "S12M060_VRBattle", "box_LogicGate_v2_12.Out", "box_Compare_Floats_v2_9.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_Timer_v2_11
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|1931969508", "1931969508", "S12M060_VRBattle", "box_Timer_v2_11.TimeElapsed", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Compare_Floats_v2_9_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListForEach_6
  l0.List = self.ScrambleNodesList
  l0.Loop = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|678965718", "678965718", "S12M060_VRBattle", "box_Compare_Floats_v2_9.A_gt_B", "box_ListForEach_6.GetNext", clone, l0)
  l0:GetNext()
end
function export:f_box_Timer_v2_13_Started()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|675158366", "675158366", "S12M060_VRBattle", "box_Timer_v2_13.Started", "TrapHacked", l0, self)
  self:TrapHacked()
end
function export:f_box_Timer_v2_13_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_8()
  l0 = self.box_Timer_v2_13
  l1 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|2124770423", "2124770423", "S12M060_VRBattle", "box_Timer_v2_13.TimeElapsed", "box_Timer_v2_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_7_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_13
  l0.Seconds = 0.5
  l0 = self.box_Hackable_Monitor_7
  l1 = self.box_Timer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|759929639", "759929639", "S12M060_VRBattle", "box_Hackable_Monitor_7.Disabled", "box_Timer_v2_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_7_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_7()
  l0 = self.box_Hackable_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|21725952", "21725952", "S12M060_VRBattle", "box_Hackable_Monitor_7.HackSuccess", "box_Hackable_Monitor_7.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_ListForEach_6_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_6
  self.NodeToScramble = l0.Data
end
function export:f_box_ListForEach_6_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_6
  self.NodeToScramble = l0.Data
end
function export:f_box_ListForEach_6_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_6
  self.NodeToScramble = l0.Data
  l0 = Boxes[PathID("domino/System/VrNodeController.lua")]
  l0.VRNode = self.NodeToScramble
  l0.AlarmTime = nil
  l0._graph = self
  l0._name = "box_VrNodeController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|383793034"
  l0.IsSetAsAlarm = DummyFunction
  l0.IsUnSetAsAlarm = DummyFunction
  l0.NodeRotated = self.f_box_VrNodeController_1_NodeRotated
  l0.Out = DummyFunction
  l0 = self.box_ListForEach_6
  l1 = Boxes[PathID("domino/System/VrNodeController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|319711904", "319711904", "S12M060_VRBattle", "box_ListForEach_6.GotNext", "box_VrNodeController_1.RotateNode", l0, l1)
  l1:RotateNode()
end
function export:f_box_ListForEach_6_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_6
  self.NodeToScramble = l0.Data
end
function export:f_box_ListForEach_6_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_6
  self.NodeToScramble = l0.Data
end
function export:f_box_Timer_v2_8_GotTime()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_8
  self.RemainingTime = l0.RemainingTime
  self:OnEnter_box_LogicGate_v2_12()
  l1 = self.box_LogicGate_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|722325000", "722325000", "S12M060_VRBattle", "box_Timer_v2_8.GotTime", "box_LogicGate_v2_12.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_8_LoopingEnded()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_8
  self.RemainingTime = l0.RemainingTime
end
function export:f_box_Timer_v2_8_Out()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_8
  self.RemainingTime = l0.RemainingTime
end
function export:f_box_Timer_v2_8_Paused()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_8
  self.RemainingTime = l0.RemainingTime
end
function export:f_box_Timer_v2_8_Resumed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_8
  self.RemainingTime = l0.RemainingTime
end
function export:f_box_Timer_v2_8_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_8
  self.RemainingTime = l0.RemainingTime
  self:OnEnter_box_MultipleOR_10()
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|1784372171", "1784372171", "S12M060_VRBattle", "box_Timer_v2_8.Started", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_8_Stopped()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_8
  self.RemainingTime = l0.RemainingTime
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_8
  self.RemainingTime = l0.RemainingTime
  self:OnEnter_box_LogicGate_v2_12()
  l1 = self.box_LogicGate_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|25831586", "25831586", "S12M060_VRBattle", "box_Timer_v2_8.TimeElapsed", "box_LogicGate_v2_12.Close", l0, l1)
  l1:Close()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_8()
  l0 = self.box_MultipleOR_10
  l1 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_VRBattle|1774106479", "1774106479", "S12M060_VRBattle", "box_MultipleOR_10.Out", "box_Timer_v2_8.GetTime", l0, l1)
  l1:GetTime()
end
function export:OnEnter_box_LogicGate_v2_12()
end
function export:OnEnter_box_Hackable_Monitor_7()
  local l0
  l0 = self.box_Hackable_Monitor_7
  l0.HackableEntity = self.TrapNodeIn
end
function export:OnEnter_box_Timer_v2_8()
  local l0
  l0 = self.box_Timer_v2_8
  l0.Seconds = 3
end
function export:OnEnter_box_MultipleOR_10()
end
function export:TrapHacked()
end
_compilerVersion = 4
