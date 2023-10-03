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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M010/s02m010_cin_falseprofitsintro.S02M010_CIN_FalseProfitsIntro_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M010/S02M010_VID_SOI-FS.S02M010_VID_SOI-FS_Main.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S02M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main"
  self.PlayerEntity = nil
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|508019211"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_MissionController_v4_3 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|608112290"
  self.box_S02M010_CIN_FalseProfitsIntro_Main_9 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M010/s02m010_cin_falseprofitsintro.S02M010_CIN_FalseProfitsIntro_Main.debug.lua")
  l0 = self.box_S02M010_CIN_FalseProfitsIntro_Main_9
  l0._graph = self
  l0._name = "box_S02M010_CIN_FalseProfitsIntro_Main_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|638910287"
  l0.EndCine = self.f_box_S02M010_CIN_FalseProfitsIntro_Main_9_EndCine
  self.box_MissionLayer_v2_12 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_12
  l0._graph = self
  l0._name = "box_MissionLayer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|699358416"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_12_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_6 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_6
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|1216517611"
  l0.Out = self.f_box_MissionCheckpointReach_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_S02M010_VID_SOI_FS_Main_4 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M010/S02M010_VID_SOI-FS.S02M010_VID_SOI-FS_Main.debug.lua")
  l0 = self.box_S02M010_VID_SOI_FS_Main_4
  l0._graph = self
  l0._name = "box_S02M010_VID_SOI_FS_Main_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|1764488565"
  l0.EndVideo = self.f_box_S02M010_VID_SOI_FS_Main_4_EndVideo
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
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|1719289777", "1719289777", "S02M010_Main", "CheckPoint_0", "box_MultipleOR_5.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|1278547139", "1278547139", "S02M010_Main", "In", "box_MultipleOR_5.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|794668992", "794668992", "S02M010_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S02M010_Main"
  l0 = self.box_MultipleOR_5
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|250456022", "250456022", "S02M010_Main", "box_MultipleOR_5.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_S02M010_CIN_FalseProfitsIntro_Main_9_EndCine()
  local l0, l1
  self = self._graph
  l0 = self.box_S02M010_CIN_FalseProfitsIntro_Main_9
  l1 = self.box_S02M010_VID_SOI_FS_Main_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|967663836", "967663836", "S02M010_Main", "box_S02M010_CIN_FalseProfitsIntro_Main_9.EndCine", "box_S02M010_VID_SOI_FS_Main_4.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_12_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_12
  l1 = self.box_MissionController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|172585080", "172585080", "S02M010_Main", "box_MissionLayer_v2_12.Unloaded", "box_MissionController_v4_3.Succeed", l0, l1)
  l1:Succeed()
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
  l0 = self.box_MissionCheckpointReach_6
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|1400614606", "1400614606", "S02M010_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_6.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_6
  l1 = self.box_S02M010_CIN_FalseProfitsIntro_Main_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|132930378", "132930378", "S02M010_Main", "box_MissionCheckpointReach_6.Out", "box_S02M010_CIN_FalseProfitsIntro_Main_9.In", l0, l1)
  l1:In()
end
function export:f_box_S02M010_VID_SOI_FS_Main_4_EndVideo()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_12
  l0.LayerName = "S02M010_Main"
  l0 = self.box_S02M010_VID_SOI_FS_Main_4
  l1 = self.box_MissionLayer_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M010\\S02M010.domino|@S02M010_Main|760528041", "760528041", "S02M010_Main", "box_S02M010_VID_SOI_FS_Main_4.EndVideo", "box_MissionLayer_v2_12.Unload", l0, l1)
  l1:Unload()
end
function export:OnEnter_box_MultipleOR_5()
end
_compilerVersion = 4
