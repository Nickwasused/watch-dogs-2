export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M035/s04_m035_cin_hackaton.S04_M035_CIN_Hackaton_Main.debug.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S04M035_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main"
  self.PlayerEntity = nil
  self.Sitara = {}
  self.Josh = {}
  self.Wrench = {}
  self.HQ_list = {}
  self.box_GetNPC_9 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_9
  l0._graph = self
  l0._name = "box_GetNPC_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|6342981"
  l0.GotNPCList = self.f_box_GetNPC_9_GotNPCList
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|687903321"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1187167984"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_8_Unloaded
  l0.Reseted = DummyFunction
  self.box_S04_M035_CIN_Hackaton_Main_10 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M035/s04_m035_cin_hackaton.S04_M035_CIN_Hackaton_Main.debug.lua")
  l0 = self.box_S04_M035_CIN_Hackaton_Main_10
  l0._graph = self
  l0._name = "box_S04_M035_CIN_Hackaton_Main_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1216877345"
  l0.Out = self.f_box_S04_M035_CIN_Hackaton_Main_10_Out
  self.box_MissionCheckpointReach_12 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_12
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1444354844"
  l0.Out = self.f_box_MissionCheckpointReach_12_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_7 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_7
  l0._graph = self
  l0._name = "box_MissionController_v4_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1472893281"
  self.box_GetNPC_13 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_13
  l0._graph = self
  l0._name = "box_GetNPC_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1620868275"
  l0.GotNPCList = self.f_box_GetNPC_13_GotNPCList
  self.box_CinematicPrep_21 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_21
  l0._graph = self
  l0._name = "box_CinematicPrep_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|2008887057"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_21_PostOut
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|2116884448", "2116884448", "S04M035_Main", "CheckPoint_0", "box_MultipleOR_3.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|336531430", "336531430", "S04M035_Main", "In", "box_MultipleOR_3.Input", self, l0)
  l0:Input(0)
end
function export:f_box_GetNPC_9_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_9
  self.HQ_list = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_list
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|2112472132"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_11_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_9
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1882745010", "1882745010", "S04M035_Main", "box_GetNPC_9.GotNPCList", "box_VisibilityController_v2_11.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|794668992", "794668992", "S04M035_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S04M035_Main"
  l0 = self.box_MultipleOR_3
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|2122602727", "2122602727", "S04M035_Main", "box_MultipleOR_3.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_VisibilityController_v2_5_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S04_M035_CIN_Hackaton_Main_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|793659623", "793659623", "S04M035_Main", "box_VisibilityController_v2_5.Hidden", "box_S04_M035_CIN_Hackaton_Main_10.In", clone, l0)
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
  l0 = self.box_MissionCheckpointReach_12
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1900566982", "1900566982", "S04M035_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_12.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_8_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l1 = self.box_MissionController_v4_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1483818542", "1483818542", "S04M035_Main", "box_MissionLayer_v2_8.Unloaded", "box_MissionController_v4_7.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_S04_M035_CIN_Hackaton_Main_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_9
  l0.Group = "HQ_Talker"
  l0 = self.box_S04_M035_CIN_Hackaton_Main_10
  l1 = self.box_GetNPC_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1455489362", "1455489362", "S04M035_Main", "box_S04_M035_CIN_Hackaton_Main_10.Out", "box_GetNPC_9.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_MissionCheckpointReach_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_13
  l0.Group = "HQ_Talker"
  l0 = self.box_MissionCheckpointReach_12
  l1 = self.box_GetNPC_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|108126576", "108126576", "S04M035_Main", "box_MissionCheckpointReach_12.Out", "box_GetNPC_13.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_Show_Or_Hide_All_UI_20_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = "S04M035_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1498015768", "1498015768", "S04M035_Main", "box_Show_Or_Hide_All_UI_20.Shown", "box_MissionLayer_v2_8.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_GetNPC_13_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_13
  self.HQ_list = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_list
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|720375458"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_5_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_13
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|632684670", "632684670", "S04M035_Main", "box_GetNPC_13.GotNPCList", "box_VisibilityController_v2_5.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_CinematicPrep_21_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1564617461"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_20_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_21
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1230013094", "1230013094", "S04M035_Main", "box_CinematicPrep_21.PostOut", "box_Show_Or_Hide_All_UI_20.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_11_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_21
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M035\\S04M035.domino|@S04M035_Main|1615406062", "1615406062", "S04M035_Main", "box_VisibilityController_v2_11.Shown", "box_CinematicPrep_21.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:OnEnter_box_MultipleOR_3()
end
_compilerVersion = 4
