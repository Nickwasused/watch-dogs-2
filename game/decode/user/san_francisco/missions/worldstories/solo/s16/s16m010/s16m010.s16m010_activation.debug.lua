export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S16M010_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Activation"
  self.box_TriggerMonitor_v2_3 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_3
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Activation|379355557"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_3_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Activation|1899468712"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
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
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Activation|439302433", "439302433", "S16M010_Activation", "In", "box_TriggerMonitor_v2_3.Enable", self, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_3_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Activation|774504034"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0 = self.box_TriggerMonitor_v2_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Activation|1801424032", "1801424032", "S16M010_Activation", "box_TriggerMonitor_v2_3.Enter", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_2
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421345764"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Activation|1545031962", "1545031962", "S16M010_Activation", "box_Ordered_Output_4.Out", "box_PhoneCommunicationController_2.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Activation|171925364", "171925364", "S16M010_Activation", "box_Ordered_Output_4.Out", "box_TriggerMonitor_v2_3.Disable", clone, l0)
  l0:Disable()
end
function export:OnEnter_box_TriggerMonitor_v2_3()
  local l0
  l0 = self.box_TriggerMonitor_v2_3
  l0.Trigger = "9223372048420917108"
  l0.AutoDisable = 1
end
_compilerVersion = 4
