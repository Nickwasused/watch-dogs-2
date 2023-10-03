export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/TeleportEntity.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Test_Raph_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Raph\\Test_Raph.domino|@Test_Raph_Main"
  self.PlayerEntity = nil
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Raph\\Test_Raph.domino|@Test_Raph_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Teleport_Entity_7 = cbox:CreateBox("domino/System/TeleportEntity.lua")
  l0 = self.box_Teleport_Entity_7
  l0._graph = self
  l0._name = "box_Teleport_Entity_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Raph\\Test_Raph.domino|@Test_Raph_Main|640284176"
  l0.Out = DummyFunction
  l0.TeleportDone = DummyFunction
  self.box_TriggerMonitor_v2_3 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_3
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Raph\\Test_Raph.domino|@Test_Raph_Main|693041722"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = self.f_box_TriggerMonitor_v2_3_Use
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "Test_Raph_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Raph\\Test_Raph.domino|@Test_Raph_Main|1104553538", "1104553538", "Test_Raph_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Raph\\Test_Raph.domino|@Test_Raph_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Raph\\Test_Raph.domino|@Test_Raph_Main|794668992", "794668992", "Test_Raph_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_3_Use()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_Entity_7
  l0.Entity = self.PlayerEntity
  l0.Destination = "9223372046242671749"
  l0 = self.box_TriggerMonitor_v2_3
  l1 = self.box_Teleport_Entity_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Raph\\Test_Raph.domino|@Test_Raph_Main|359772040", "359772040", "Test_Raph_Main", "box_TriggerMonitor_v2_3.Use", "box_Teleport_Entity_7.In", l0, l1)
  l1:In()
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
  l0 = self.box_TriggerMonitor_v2_3
  l0.Trigger = "9223372046242671571"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Raph\\Test_Raph.domino|@Test_Raph_Main|454016931", "454016931", "Test_Raph_Main", "box_Get_Player_ID_1.Out", "box_TriggerMonitor_v2_3.Enable", clone, l0)
  l0:Enable()
end
_compilerVersion = 4
