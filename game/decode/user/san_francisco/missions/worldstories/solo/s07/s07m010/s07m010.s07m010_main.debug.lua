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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/S07M010/S07_M010_CIN_NviteIntro.S07_M010_CIN_NviteIntro_Main.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S07M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main"
  self.PlayerEntity = nil
  self.InteractionBox_Test = "9223372046518047701"
  self.InteractionBox01 = "9223372046518047699"
  self.InteractionBox02 = "9223372046518048519"
  self.InteractionBox03 = "9223372046518048517"
  self.CEO_Computer = "9223372046786832654"
  self.OutsideFrontDoor01 = "9223372046786834686"
  self.OutsideFrontDoor02 = "9223372046786835360"
  self.OutsideBackDoor02 = "9223372046786835366"
  self.OutsideBackDoor01 = "9223372046786835364"
  self.OutsideBackDoor03 = "9223372046786835362"
  self.Elevator = "9223372046857693631"
  self.S07M010_Main = "S07M010_Main"
  self.box_S07_M010_CIN_NviteIntro_Main_5 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/S07M010/S07_M010_CIN_NviteIntro.S07_M010_CIN_NviteIntro_Main.debug.lua")
  l0 = self.box_S07_M010_CIN_NviteIntro_Main_5
  l0._graph = self
  l0._name = "box_S07_M010_CIN_NviteIntro_Main_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|154846207"
  l0.Out = self.f_box_S07_M010_CIN_NviteIntro_Main_5_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_6 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_6
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|670819392"
  l0.Out = self.f_box_MissionCheckpointReach_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|875314006"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_MissionController_v4_4 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_4
  l0._graph = self
  l0._name = "box_MissionController_v4_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|1345245686"
  self.box_MissionLayer_v2_3 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_3
  l0._graph = self
  l0._name = "box_MissionLayer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|1548509540"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_3_Unloaded
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
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|2007212254", "2007212254", "S07M010_Main", "CheckPoint_0", "box_MultipleOR_7.Input", self, l0)
  l0:Input(0)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|852982954", "852982954", "S07M010_Main", "In", "box_MultipleOR_7.Input", self, l0)
  l0:Input(1)
end
function export:f_box_S07_M010_CIN_NviteIntro_Main_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_3
  l0.LayerName = self.S07M010_Main
  l0 = self.box_S07_M010_CIN_NviteIntro_Main_5
  l1 = self.box_MissionLayer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|321843041", "321843041", "S07M010_Main", "box_S07_M010_CIN_NviteIntro_Main_5.Out", "box_MissionLayer_v2_3.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|1129955076", "1129955076", "S07M010_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_6
  l1 = self.box_S07_M010_CIN_NviteIntro_Main_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|806643900", "806643900", "S07M010_Main", "box_MissionCheckpointReach_6.Out", "box_S07_M010_CIN_NviteIntro_Main_5.In", l0, l1)
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
  l0 = self.box_MissionCheckpointReach_6
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|1163039793", "1163039793", "S07M010_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_6.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = self.S07M010_Main
  l0 = self.box_MultipleOR_7
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|323671637", "323671637", "S07M010_Main", "box_MultipleOR_7.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_3_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_3
  l1 = self.box_MissionController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M010\\S07M010.domino|@S07M010_Main|1269703939", "1269703939", "S07M010_Main", "box_MissionLayer_v2_3.Unloaded", "box_MissionController_v4_4.Succeed", l0, l1)
  l1:Succeed()
end
function export:OnEnter_box_MultipleOR_7()
end
_compilerVersion = 4
