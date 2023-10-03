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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M010/s09m010_cin_911intro.S09M010_CIN_911Intro_Main.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S09M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main"
  self.Mission = "MissionList.9223372047132941507"
  self.LayerMain = "S09M010_Main"
  self.PlayerEntity = nil
  self.box_MissionController_v4_1 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_1
  l0._graph = self
  l0._name = "box_MissionController_v4_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|390763338"
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|719466154"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_5_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_69 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_69
  l0._graph = self
  l0._name = "box_MultipleOR_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|1443414207"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_69_Out
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|1529225531"
  l0.Out = self.f_box_MissionCheckpointReach_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_15 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_15
  l0._graph = self
  l0._name = "box_MissionLayer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|1601984702"
  l0.Loaded = self.f_box_MissionLayer_v2_15_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S09M010_CIN_911Intro_Main_4 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M010/s09m010_cin_911intro.S09M010_CIN_911Intro_Main.debug.lua")
  l0 = self.box_S09M010_CIN_911Intro_Main_4
  l0._graph = self
  l0._name = "box_S09M010_CIN_911Intro_Main_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|2128889323"
  l0.EndCine = self.f_box_S09M010_CIN_911Intro_Main_4_EndCine
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
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|928910131", "928910131", "S09M010_Main", "CheckPoint_0", "box_MultipleOR_69.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|1862570244", "1862570244", "S09M010_Main", "In", "box_MultipleOR_69.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_5_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l1 = self.box_MissionController_v4_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|1361330481", "1361330481", "S09M010_Main", "box_MissionLayer_v2_5.Unloaded", "box_MissionController_v4_1.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Get_Player_ID_56_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_3
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|1080699777", "1080699777", "S09M010_Main", "box_Get_Player_ID_56.Out", "box_MissionCheckpointReach_3.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_69_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_15
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_69
  l1 = self.box_MissionLayer_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|767919187", "767919187", "S09M010_Main", "box_MultipleOR_69.Out", "box_MissionLayer_v2_15.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionCheckpointReach_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_3
  l1 = self.box_S09M010_CIN_911Intro_Main_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|1924310519", "1924310519", "S09M010_Main", "box_MissionCheckpointReach_3.Out", "box_S09M010_CIN_911Intro_Main_4.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_15_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|908850215"
  l0.Out = self.f_box_Get_Player_ID_56_Out
  l0 = self.box_MissionLayer_v2_15
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|631719237", "631719237", "S09M010_Main", "box_MissionLayer_v2_15.Loaded", "box_Get_Player_ID_56.In", l0, l1)
  l1:In()
end
function export:f_box_S09M010_CIN_911Intro_Main_4_EndCine()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = self.LayerMain
  l0 = self.box_S09M010_CIN_911Intro_Main_4
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M010\\S09M010.domino|@S09M010_Main|1903855168", "1903855168", "S09M010_Main", "box_S09M010_CIN_911Intro_Main_4.EndCine", "box_MissionLayer_v2_5.Unload", l0, l1)
  l1:Unload()
end
function export:OnEnter_box_MultipleOR_69()
end
_compilerVersion = 4
