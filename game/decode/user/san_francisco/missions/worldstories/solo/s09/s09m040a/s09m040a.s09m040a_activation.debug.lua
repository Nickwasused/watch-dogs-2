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
  self._name = "S09M040a_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Activation"
  self.PlayerEntity = "200"
  self.box_PhoneCommunicationController_3 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_3
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Activation|206871444"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Proximity_Monitor_1 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_1
  l0._graph = self
  l0._name = "box_Proximity_Monitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Activation|285657844"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_1_EnterRadius
  l0.ExitRadius = DummyFunction
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
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Activation|184499899"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Activation|854657934", "854657934", "S09M040a_Activation", "In", "box_Get_Player_ID_2.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  self:OnEnter_box_Proximity_Monitor_1()
  l0 = self.box_Proximity_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Activation|1684575382", "1684575382", "S09M040a_Activation", "Stop", "box_Proximity_Monitor_1.Disable", self, l0)
  l0:Disable()
end
function export:f_box_Get_Player_ID_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_1()
  l0 = self.box_Proximity_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Activation|1114178197", "1114178197", "S09M040a_Activation", "box_Get_Player_ID_2.Out", "box_Proximity_Monitor_1.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Proximity_Monitor_1_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_3
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327009"
  l0 = self.box_Proximity_Monitor_1
  l1 = self.box_PhoneCommunicationController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Activation|1154080923", "1154080923", "S09M040a_Activation", "box_Proximity_Monitor_1.EnterRadius", "box_PhoneCommunicationController_3.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:OnEnter_box_Proximity_Monitor_1()
  local l0
  l0 = self.box_Proximity_Monitor_1
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372053943013714"
  l0.Radius = 110
  l0.CheckNow = 1
end
_compilerVersion = 4
