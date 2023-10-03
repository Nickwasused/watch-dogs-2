export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L28M020_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Activation"
  self.MissionStart = DummyFunction
  self.L12M020_ProximityTrigger_RoomFound = "9223372064391415895"
  self.box_TriggerMonitor_v2_1 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_1
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Activation|264244703"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_1_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_1_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Activation|817593941"
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
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Activation|223548348", "223548348", "L28M020_Activation", "In", "box_TriggerMonitor_v2_1.Enable", self, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_1_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_2
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367342"
  l0 = self.box_TriggerMonitor_v2_1
  l1 = self.box_PhoneCommunicationController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Activation|1830004581", "1830004581", "L28M020_Activation", "box_TriggerMonitor_v2_1.Disabled", "box_PhoneCommunicationController_2.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_1_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Activation|1354388343", "1354388343", "L28M020_Activation", "box_TriggerMonitor_v2_1.Enter", "box_TriggerMonitor_v2_1.Disable", l0, l0)
  l0:Disable()
end
function export:OnEnter_box_TriggerMonitor_v2_1()
  local l0
  l0 = self.box_TriggerMonitor_v2_1
  l0.Trigger = self.L12M020_ProximityTrigger_RoomFound
end
function export:MissionStart()
end
_compilerVersion = 4
