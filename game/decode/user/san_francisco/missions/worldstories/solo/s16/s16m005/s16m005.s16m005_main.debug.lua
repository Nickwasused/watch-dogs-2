export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M005/S16M005_CIN_ShanghaiedIntro.S16M005_CIN_ShanghaiedIntro_Main.debug.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S16M005_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main"
  self.PlayerEntity = nil
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|239881528"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_S16M005_CIN_ShanghaiedIntro_Main_9 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M005/S16M005_CIN_ShanghaiedIntro.S16M005_CIN_ShanghaiedIntro_Main.debug.lua")
  l0 = self.box_S16M005_CIN_ShanghaiedIntro_Main_9
  l0._graph = self
  l0._name = "box_S16M005_CIN_ShanghaiedIntro_Main_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|672016938"
  l0.cin_out = self.f_box_S16M005_CIN_ShanghaiedIntro_Main_9_cin_out
  self.box_MissionLayer_v2_7 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|928606140"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_7_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_8 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_8
  l0._graph = self
  l0._name = "box_MissionController_v4_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|1306225257"
  self.box_TeleportPlayerInsideHma_3 = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self.box_TeleportPlayerInsideHma_3
  l0._graph = self
  l0._name = "box_TeleportPlayerInsideHma_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|1355466666"
  l0.Out = DummyFunction
  l0.Done = self.f_box_TeleportPlayerInsideHma_3_Done
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
  l0 = self.box_TeleportPlayerInsideHma_3
  l0.SpawnPoint = "9223372048320953452"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|798326228", "798326228", "S16M005_Main", "CheckPoint_0", "box_TeleportPlayerInsideHma_3.In", self, l0)
  l0:In()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|2035993284", "2035993284", "S16M005_Main", "In", "box_MultipleOR_4.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|794668992", "794668992", "S16M005_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S16M005_Main"
  l0 = self.box_MultipleOR_4
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|1557144171", "1557144171", "S16M005_Main", "box_MultipleOR_4.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_S16M005_CIN_ShanghaiedIntro_Main_9_cin_out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = "S16M005_Main"
  l0 = self.box_S16M005_CIN_ShanghaiedIntro_Main_9
  l1 = self.box_MissionLayer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|783740567", "783740567", "S16M005_Main", "box_S16M005_CIN_ShanghaiedIntro_Main_9.cin_out", "box_MissionLayer_v2_7.Unload", l0, l1)
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
  l0 = self.box_S16M005_CIN_ShanghaiedIntro_Main_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|1579093702", "1579093702", "S16M005_Main", "box_Get_Player_ID_1.Out", "box_S16M005_CIN_ShanghaiedIntro_Main_9.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_7_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_7
  l1 = self.box_MissionController_v4_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|540804911", "540804911", "S16M005_Main", "box_MissionLayer_v2_7.Unloaded", "box_MissionController_v4_8.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_TeleportPlayerInsideHma_3_Done()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_TeleportPlayerInsideHma_3
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M005\\S16M005.domino|@S16M005_Main|1055449059", "1055449059", "S16M005_Main", "box_TeleportPlayerInsideHma_3.Done", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_MultipleOR_4()
end
_compilerVersion = 4
