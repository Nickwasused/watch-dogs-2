export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S04M050_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Activation"
  self.PlayerEntity = nil
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Activation|256615387"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Player_Proximity_Monitor_1 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_1
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Activation|566025781"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Proximity_Monitor_1_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_1_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
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
  l0._name = "box_Get_Player_ID_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Activation|1713297148"
  l0.Out = self.f_box_Get_Player_ID_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Activation|703600630", "703600630", "S04M050_Activation", "In", "box_Get_Player_ID_3.In", self, l0)
  l0:In()
end
function export:f_box_Player_Proximity_Monitor_1_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_2
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347583"
  l0 = self.box_Player_Proximity_Monitor_1
  l1 = self.box_PhoneCommunicationController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Activation|1864653600", "1864653600", "S04M050_Activation", "box_Player_Proximity_Monitor_1.Disabled", "box_PhoneCommunicationController_2.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Player_Proximity_Monitor_1_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_1()
  l0 = self.box_Player_Proximity_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Activation|453301469", "453301469", "S04M050_Activation", "box_Player_Proximity_Monitor_1.EnterRadius", "box_Player_Proximity_Monitor_1.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Get_Player_ID_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_1()
  l0 = self.box_Player_Proximity_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Activation|1039574378", "1039574378", "S04M050_Activation", "box_Get_Player_ID_3.Out", "box_Player_Proximity_Monitor_1.Enable", clone, l0)
  l0:Enable()
end
function export:OnEnter_box_Player_Proximity_Monitor_1()
  local l0
  l0 = self.box_Player_Proximity_Monitor_1
  l0.TargetEntity = "9223372053447896395"
  l0.Radius = 35
end
_compilerVersion = 4
