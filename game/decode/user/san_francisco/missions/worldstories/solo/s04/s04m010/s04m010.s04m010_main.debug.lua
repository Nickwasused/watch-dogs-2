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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M010/s04_m010_cin_meetwrench.S04_M010_CIN_MeetWrench_Main.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S04M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main"
  self.PlayerEntity = nil
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|20712184"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_5_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_4 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_4
  l0._graph = self
  l0._name = "box_MissionController_v4_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|310747140"
  self.box_S04_M010_CIN_MeetWrench_Main_6 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M010/s04_m010_cin_meetwrench.S04_M010_CIN_MeetWrench_Main.debug.lua")
  l0 = self.box_S04_M010_CIN_MeetWrench_Main_6
  l0._graph = self
  l0._name = "box_S04_M010_CIN_MeetWrench_Main_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|393509713"
  l0.Out = self.f_box_S04_M010_CIN_MeetWrench_Main_6_Out
  self.box_MissionLayer_v2_9 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_9
  l0._graph = self
  l0._name = "box_MissionLayer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|397053786"
  l0.Loaded = self.f_box_MissionLayer_v2_9_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_11 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_11
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|1137754218"
  l0.Out = self.f_box_MissionCheckpointReach_11_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|1441438688"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
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
  l0 = self.box_MissionLayer_v2_9
  l0.LayerName = "S04M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|2042051487", "2042051487", "S04M010_Main", "CheckPoint_0", "box_MissionLayer_v2_9.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S04M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|1104553538", "1104553538", "S04M010_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionLayer_v2_5_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l1 = self.box_MissionController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|255460500", "255460500", "S04M010_Main", "box_MissionLayer_v2_5.Unloaded", "box_MissionController_v4_4.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|1248623074", "1248623074", "S04M010_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_S04_M010_CIN_MeetWrench_Main_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = "S04M010_Main"
  l0 = self.box_S04_M010_CIN_MeetWrench_Main_6
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|1937920877", "1937920877", "S04M010_Main", "box_S04_M010_CIN_MeetWrench_Main_6.Out", "box_MissionLayer_v2_5.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_9_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|808416046"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_MissionLayer_v2_9
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|397099010", "397099010", "S04M010_Main", "box_MissionLayer_v2_9.Loaded", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
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
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|1707252441", "1707252441", "S04M010_Main", "box_Get_Player_ID_7.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(1)
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
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|64482969", "64482969", "S04M010_Main", "box_Get_Player_ID_1.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionCheckpointReach_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_11
  l1 = self.box_S04_M010_CIN_MeetWrench_Main_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|1170072963", "1170072963", "S04M010_Main", "box_MissionCheckpointReach_11.Out", "box_S04_M010_CIN_MeetWrench_Main_6.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_11
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_10
  l1 = self.box_MissionCheckpointReach_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\S04M010.domino|@S04M010_Main|1734223073", "1734223073", "S04M010_Main", "box_MultipleOR_10.Out", "box_MissionCheckpointReach_11.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_10()
end
_compilerVersion = 4
