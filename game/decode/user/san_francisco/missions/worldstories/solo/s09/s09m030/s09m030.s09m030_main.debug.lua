export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M030/S09M030_CIN_MirandaOPD.S09M030_CIN_MirandaOPD_Main.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S09M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main"
  self.PlayerEntity = nil
  self.LayerMain = "S09M030_Main"
  self.Mission = "MissionList.9223372047132941508"
  self.box_MissionLayer_v2_9 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_9
  l0._graph = self
  l0._name = "box_MissionLayer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|289981855"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_9_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|510221139"
  l0.Loaded = self.f_box_MissionLayer_v2_8_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|717052255"
  self.box_S09M030_CIN_MirandaOPD_Main_4 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M030/S09M030_CIN_MirandaOPD.S09M030_CIN_MirandaOPD_Main.debug.lua")
  l0 = self.box_S09M030_CIN_MirandaOPD_Main_4
  l0._graph = self
  l0._name = "box_S09M030_CIN_MirandaOPD_Main_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|745736931"
  l0.EndCine = self.f_box_S09M030_CIN_MirandaOPD_Main_4_EndCine
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|805779518"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_PhoneCommunicationController_5 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_5
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|1374193255"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_5_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_1 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_1
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|1946904304"
  l0.Out = self.f_box_MissionCheckpointReach_1_Out
  l0.AllCheckpointsDisabled = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|1795956428", "1795956428", "S09M030_Main", "CheckPoint_0", "box_MultipleOR_3.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|318241458", "318241458", "S09M030_Main", "In", "box_MultipleOR_3.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_9_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|2006539788", "2006539788", "S09M030_Main", "box_MissionLayer_v2_9.Unloaded", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionLayer_v2_8_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|1761367580"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_MissionLayer_v2_8
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|849311534", "849311534", "S09M030_Main", "box_MissionLayer_v2_8.Loaded", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
end
function export:f_box_S09M030_CIN_MirandaOPD_Main_4_EndCine()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_5
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053009838666"
  l0 = self.box_S09M030_CIN_MirandaOPD_Main_4
  l1 = self.box_PhoneCommunicationController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|1154374332", "1154374332", "S09M030_Main", "box_S09M030_CIN_MirandaOPD_Main_4.EndCine", "box_PhoneCommunicationController_5.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_3
  l1 = self.box_MissionLayer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|1963919003", "1963919003", "S09M030_Main", "box_MultipleOR_3.Out", "box_MissionLayer_v2_8.Load", l0, l1)
  l1:Load()
end
function export:f_box_PhoneCommunicationController_5_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l0.LayerName = self.LayerMain
  l0 = self.box_PhoneCommunicationController_5
  l1 = self.box_MissionLayer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|1328472898", "1328472898", "S09M030_Main", "box_PhoneCommunicationController_5.OnCommunicationFinished", "box_MissionLayer_v2_9.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Get_Player_ID_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_1
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|455211286", "455211286", "S09M030_Main", "box_Get_Player_ID_7.Out", "box_MissionCheckpointReach_1.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_1
  l1 = self.box_S09M030_CIN_MirandaOPD_Main_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M030\\S09M030.domino|@S09M030_Main|706098829", "706098829", "S09M030_Main", "box_MissionCheckpointReach_1.Out", "box_S09M030_CIN_MirandaOPD_Main_4.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_3()
end
_compilerVersion = 4
