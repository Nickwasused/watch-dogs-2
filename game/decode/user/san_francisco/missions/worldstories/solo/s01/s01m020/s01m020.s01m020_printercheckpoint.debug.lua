export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S01M020_PrinterCheckPoint"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint"
  self.Out = DummyFunction
  self.Entity_Wrench = nil
  self.Entity_Horatio = "9223372067694577644"
  self.box_CLOMonitor_7 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_7
  l0._graph = self
  l0._name = "box_CLOMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|642959048"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_7_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_7_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_7_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|776829622"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|812769594"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_6_OnUserInPlace
  self.box_CLOMonitor_1 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_1
  l0._graph = self
  l0._name = "box_CLOMonitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1948004645"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_1_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_1_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_1_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
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
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345166"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|263761051"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_4_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|564019069", "564019069", "S01M020_PrinterCheckPoint", "In", "box_InteractionScriptController_4.Disable", self, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptController_3_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Entity_Horatio
  l0._graph = self
  l0._name = "box_Set_Entity_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1961521140"
  l0.Out = self.f_box_Set_Entity_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|506565158", "506565158", "S01M020_PrinterCheckPoint", "box_InteractionScriptController_3.Disabled", "box_Set_Entity_9.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_InteractionScriptController_4_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345164"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1025232433"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_8_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1321626235", "1321626235", "S01M020_PrinterCheckPoint", "box_InteractionScriptController_4.Disabled", "box_InteractionScriptController_8.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOMonitor_7_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_7
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_MultipleOR_5()
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|379147632", "379147632", "S01M020_PrinterCheckPoint", "box_CLOMonitor_7.GotUser", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_7_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_7
  self.Entity_Wrench = l0.UserID
  self:OnEnter_box_CLOMonitor_1()
  l1 = self.box_CLOMonitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1250507751", "1250507751", "S01M020_PrinterCheckPoint", "box_CLOMonitor_7.NotGotUser", "box_CLOMonitor_1.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_7_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_7
  self.Entity_Wrench = l0.UserID
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047375551844"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|970311642"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_11_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_5
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1068029703", "1068029703", "S01M020_PrinterCheckPoint", "box_MultipleOR_5.Out", "box_InteractionScriptController_11.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CLOController_6_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  self.Entity_Horatio = l0.UserID
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Entity_Horatio
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|209199490"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_3_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOController_6
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|742288098", "742288098", "S01M020_PrinterCheckPoint", "box_CLOController_6.OnUserInPlace", "box_InteractionScriptController_3.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_InteractionScriptController_11_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_6
  l0.CLO = self.CLO_Horatio
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|465567661", "465567661", "S01M020_PrinterCheckPoint", "box_InteractionScriptController_11.Disabled", "box_CLOController_6.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_InteractionScriptController_8_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_7
  l0.CLO = self.CLO_Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|427163993", "427163993", "S01M020_PrinterCheckPoint", "box_InteractionScriptController_8.Disabled", "box_CLOMonitor_7.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_1()
  l0 = self.box_CLOMonitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1320987903", "1320987903", "S01M020_PrinterCheckPoint", "box_Ordered_Output_2.Out", "box_CLOMonitor_1.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1674220956", "1674220956", "S01M020_PrinterCheckPoint", "box_Ordered_Output_2.Out", "box_MultipleOR_5.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Set_Entity_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Wrench = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|731882235", "731882235", "S01M020_PrinterCheckPoint", "box_Set_Entity_10.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_CLOMonitor_1_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_1
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_1_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_1
  self.Entity_Wrench = l0.UserID
end
function export:f_box_CLOMonitor_1_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_1
  self.Entity_Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1202025079"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_CLOMonitor_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1902612627", "1902612627", "S01M020_PrinterCheckPoint", "box_CLOMonitor_1.OnUserInPlace", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_Set_Entity_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Horatio = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Entity_Wrench
  l0._graph = self
  l0._name = "box_Set_Entity_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1256611277"
  l0.Out = self.f_box_Set_Entity_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_PrinterCheckPoint|1185701947", "1185701947", "S01M020_PrinterCheckPoint", "box_Set_Entity_9.Out", "box_Set_Entity_10.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_CLOMonitor_1()
  local l0
  l0 = self.box_CLOMonitor_1
  l0.CLO = self.CLO_Wrench
end
function export:Out()
end
_compilerVersion = 4
