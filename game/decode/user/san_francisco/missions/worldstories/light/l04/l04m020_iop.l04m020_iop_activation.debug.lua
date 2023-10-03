export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L04M020_IOP_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Activation"
  self.L04M020_ProximityTrigger_NearOffice = "9223372055951009986"
  self.Jumper_Activation = nil
  self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_2 = "9223372064004749291"
  self.box_CLOController_5 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Activation|1315489388"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Activation|1654036882"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_2_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_1 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_1
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Activation|1723367746"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_1_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_1_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_InteractionScriptMonitor_v2_4 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_4
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Activation|1743852864"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_4_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Activation|861813430", "861813430", "L04M020_IOP_Activation", "In", "box_TriggerMonitor_v2_1.Enable", self, l0)
  l0:Enable()
end
function export:f_box_PhoneCommunicationController_2_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_4
  l0.InteractionScriptEntity = self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_2
  l0 = self.box_PhoneCommunicationController_2
  l1 = self.box_InteractionScriptMonitor_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Activation|49654403", "49654403", "L04M020_IOP_Activation", "box_PhoneCommunicationController_2.StartCommunicationOut", "box_InteractionScriptMonitor_v2_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_1_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_2
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367237"
  l0 = self.box_TriggerMonitor_v2_1
  l1 = self.box_PhoneCommunicationController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Activation|600929887", "600929887", "L04M020_IOP_Activation", "box_TriggerMonitor_v2_1.Disabled", "box_PhoneCommunicationController_2.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_1_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Activation|760670387", "760670387", "L04M020_IOP_Activation", "box_TriggerMonitor_v2_1.Enter", "box_TriggerMonitor_v2_1.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_4_InteractionStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_5
  l0.CLO = "9223372058100389387"
  l0.User = self.Jumper_Activation
  l0 = self.box_InteractionScriptMonitor_v2_4
  l1 = self.box_CLOController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Activation|411024723", "411024723", "L04M020_IOP_Activation", "box_InteractionScriptMonitor_v2_4.InteractionStarted", "box_CLOController_5.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:OnEnter_box_TriggerMonitor_v2_1()
  local l0
  l0 = self.box_TriggerMonitor_v2_1
  l0.Trigger = self.L04M020_ProximityTrigger_NearOffice
end
_compilerVersion = 4
