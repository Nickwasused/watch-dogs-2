export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S09M040b_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Activation"
  self.PlayerEntity = "200"
  self.box_Proximity_Monitor_3 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_3
  l0._graph = self
  l0._name = "box_Proximity_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Activation|1551408280"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_3_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_3_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Activation|1624589817"
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Activation|47044017"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Activation|1009448829", "1009448829", "S09M040b_Activation", "In", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_3()
  l0 = self.box_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Activation|1797835331", "1797835331", "S09M040b_Activation", "box_Get_Player_ID_1.Out", "box_Proximity_Monitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Proximity_Monitor_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_2
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347657"
  l0 = self.box_Proximity_Monitor_3
  l1 = self.box_PhoneCommunicationController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Activation|6074168", "6074168", "S09M040b_Activation", "box_Proximity_Monitor_3.Disabled", "box_PhoneCommunicationController_2.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Proximity_Monitor_3_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_3()
  l0 = self.box_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Activation|1614854068", "1614854068", "S09M040b_Activation", "box_Proximity_Monitor_3.EnterRadius", "box_Proximity_Monitor_3.Disable", l0, l0)
  l0:Disable()
end
function export:OnEnter_box_Proximity_Monitor_3()
  local l0
  l0 = self.box_Proximity_Monitor_3
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372053942934443"
  l0.Radius = 160
  l0.CheckNow = 1
end
_compilerVersion = 4
