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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M010/s14_m010_cin_dumpsterdiving.S14_M010_CIN_DumpsterDiving_Main.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S14M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main"
  self.PlayerEntity = nil
  self.TalkersHQ = {}
  self.box_MultipleOR_8 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|172843077"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S14_M010_CIN_DumpsterDiving_Main_3 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M010/s14_m010_cin_dumpsterdiving.S14_M010_CIN_DumpsterDiving_Main.debug.lua")
  l0 = self.box_S14_M010_CIN_DumpsterDiving_Main_3
  l0._graph = self
  l0._name = "box_S14_M010_CIN_DumpsterDiving_Main_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|779116135"
  l0.Out = self.f_box_S14_M010_CIN_DumpsterDiving_Main_3_Out
  self.box_MissionCheckpointReach_9 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_9
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|833881826"
  l0.Out = self.f_box_MissionCheckpointReach_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_6 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_6
  l0._graph = self
  l0._name = "box_MissionController_v4_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|881949612"
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|1821037472"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_4_Unloaded
  l0.Reseted = DummyFunction
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
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|1965201526", "1965201526", "S14M010_Main", "CheckPoint_0", "box_MultipleOR_8.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|1883250543", "1883250543", "S14M010_Main", "In", "box_MultipleOR_8.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S14M010_Main"
  l0 = self.box_MultipleOR_8
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|1277620310", "1277620310", "S14M010_Main", "box_MultipleOR_8.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|325717310", "325717310", "S14M010_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_S14_M010_CIN_DumpsterDiving_Main_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = "S14M010_Main"
  l0 = self.box_S14_M010_CIN_DumpsterDiving_Main_3
  l1 = self.box_MissionLayer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|1252182941", "1252182941", "S14M010_Main", "box_S14_M010_CIN_DumpsterDiving_Main_3.Out", "box_MissionLayer_v2_4.Unload", l0, l1)
  l1:Unload()
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
  l0 = self.box_MissionCheckpointReach_9
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|402659320", "402659320", "S14M010_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_9.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_9
  l1 = self.box_S14_M010_CIN_DumpsterDiving_Main_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|287955919", "287955919", "S14M010_Main", "box_MissionCheckpointReach_9.Out", "box_S14_M010_CIN_DumpsterDiving_Main_3.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_4_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l1 = self.box_MissionController_v4_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M010\\S14M010.domino|@S14M010_Main|290797171", "290797171", "S14M010_Main", "box_MissionLayer_v2_4.Unloaded", "box_MissionController_v4_6.Succeed", l0, l1)
  l1:Succeed()
end
function export:OnEnter_box_MultipleOR_8()
end
_compilerVersion = 4
