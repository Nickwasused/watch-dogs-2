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
  self._name = "PoliceTrapped"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped"
  self.Out = DummyFunction
  self.Trapped = DummyFunction
  self.TempTrapped = nil
  self.TempBool = 0
  self.box_Moveable_Entity_Monitor_1 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_1
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|592230122"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_1_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|958537770"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_PlayDialog_v2_3 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_3
  l0._graph = self
  l0._name = "box_PlayDialog_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|1037826923"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_3_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_2 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_2
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|1614437305"
  l0.Enabled = self.f_box_TriggerMonitor_v2_2_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_2_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_2_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_2_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_2_Use
  self.box_PlayDialog_v2_4 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_4
  l0._graph = self
  l0._name = "box_PlayDialog_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|2031151829"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_4_Finished
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
  self:OnEnter_box_TriggerMonitor_v2_2()
  l0 = self.box_TriggerMonitor_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|631706208", "631706208", "PoliceTrapped", "In", "box_TriggerMonitor_v2_2.Enable", self, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomBoolean.lua")]
  l0._graph = self
  l0._name = "box_Random_Boolean_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|1214661981"
  l0.Out = self.f_box_Random_Boolean_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|1777485921", "1777485921", "PoliceTrapped", "box_Simple_Node_7.Out", "box_Random_Boolean_8.In", clone, l0)
  l0:In()
end
function export:f_box_Moveable_Entity_Monitor_1_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_2()
  l0 = self.box_Moveable_Entity_Monitor_1
  l1 = self.box_TriggerMonitor_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|86515951", "86515951", "PoliceTrapped", "box_Moveable_Entity_Monitor_1.OnBkwMovementFinished", "box_TriggerMonitor_v2_2.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_6_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|955886738", "955886738", "PoliceTrapped", "box_MultipleOR_6.Out", "Trapped", l0, self)
  self:Trapped()
end
function export:f_box_PlayDialog_v2_3_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_PlayDialog_v2_3
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|1135088833", "1135088833", "PoliceTrapped", "box_PlayDialog_v2_3.Finished", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Random_Boolean_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomBoolean.lua")]
  self.TempBool = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TempBool
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|2027200981"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_5_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_5_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|624789026", "624789026", "PoliceTrapped", "box_Random_Boolean_8.Out", "box_Compare_Boolean_v2_5.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_2_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|158761596"
  l0.Out = self.f_box_Simple_Node_7_Out
  l0 = self.box_TriggerMonitor_v2_2
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|1996360697", "1996360697", "PoliceTrapped", "box_TriggerMonitor_v2_2.Disabled", "box_Simple_Node_7.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_2_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_2
  self.TempTrapped = l0.Collider
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|1139622946", "1139622946", "PoliceTrapped", "box_TriggerMonitor_v2_2.Enabled", "Out", l0, self)
  self:Out()
end
function export:f_box_TriggerMonitor_v2_2_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_2
  self.TempTrapped = l0.Collider
  l0 = self.box_Moveable_Entity_Monitor_1
  l0.MoveableEntity = self.Door
  l0.CheckNow = 1
  l0 = self.box_TriggerMonitor_v2_2
  l1 = self.box_Moveable_Entity_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|1579260792", "1579260792", "PoliceTrapped", "box_TriggerMonitor_v2_2.Enter", "box_Moveable_Entity_Monitor_1.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_2_Leave()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_2
  self.TempTrapped = l0.Collider
end
function export:f_box_TriggerMonitor_v2_2_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_2
  self.TempTrapped = l0.Collider
end
function export:f_box_Compare_Boolean_v2_5_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_4
  l0.Entity = self.TempTrapped
  l0.SoundId = self.Sound2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|609548907", "609548907", "PoliceTrapped", "box_Compare_Boolean_v2_5.A_is_False", "box_PlayDialog_v2_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_5_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_3
  l0.Entity = self.TempTrapped
  l0.SoundId = self.Sound1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|2036141157", "2036141157", "PoliceTrapped", "box_Compare_Boolean_v2_5.A_is_True", "box_PlayDialog_v2_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_4_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_PlayDialog_v2_4
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@PoliceTrapped|306970325", "306970325", "PoliceTrapped", "box_PlayDialog_v2_4.Finished", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_TriggerMonitor_v2_2()
  local l0
  l0 = self.box_TriggerMonitor_v2_2
  l0.TriggerList = self.TriggerList
  l0.CheckNow = 1
end
function export:Out()
end
function export:Trapped()
end
_compilerVersion = 4
