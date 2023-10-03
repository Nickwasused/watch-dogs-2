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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M005/s08m005_cin_limpnudleintro.S08M005_CIN_LimpNudleIntro_Main.debug.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S08M005_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main"
  self.PlayerEntity = nil
  self.HackerSpaceLoader = "9223372047131482396"
  self.MissionLayer = "S08M005_Main"
  self.HackerSpaceLayer = "SF_08_Mission_Central_HMA_Hackerspace"
  self.S08M005_CheckPoint_0 = "9223372054968008568"
  self.box_MissionController_v4_6 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_6
  l0._graph = self
  l0._name = "box_MissionController_v4_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|215480162"
  self.box_S08M005_CIN_LimpNudleIntro_Main_1 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M005/s08m005_cin_limpnudleintro.S08M005_CIN_LimpNudleIntro_Main.debug.lua")
  l0 = self.box_S08M005_CIN_LimpNudleIntro_Main_1
  l0._graph = self
  l0._name = "box_S08M005_CIN_LimpNudleIntro_Main_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|258637708"
  l0.Out = self.f_box_S08M005_CIN_LimpNudleIntro_Main_1_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|516118602"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_11 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_11
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|731467710"
  l0.Out = self.f_box_MissionCheckpointReach_11_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TeleportPlayerInsideHma_3 = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self.box_TeleportPlayerInsideHma_3
  l0._graph = self
  l0._name = "box_TeleportPlayerInsideHma_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|981567419"
  l0.Out = DummyFunction
  l0.Done = self.f_box_TeleportPlayerInsideHma_3_Done
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|1494852890"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_4_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|1540626258"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|1876809496"
  l0.Loaded = self.f_box_MissionLayer_v2_8_Loaded
  l0.Unloaded = DummyFunction
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|2101868218", "2101868218", "S08M005_Main", "CheckPoint_0", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|345967866", "345967866", "S08M005_Main", "In", "box_MissionLayer_v2_8.Load", self, l0)
  l0:Load()
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
  l0 = self.box_TeleportPlayerInsideHma_3
  l0.SpawnPoint = self.S08M005_CheckPoint_0
  l0.StandaloneLoader = self.HackerSpaceLoader
  l0.LayerName = self.HackerSpaceLayer
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|1108823221", "1108823221", "S08M005_Main", "box_Get_Player_ID_7.Out", "box_TeleportPlayerInsideHma_3.In", clone, l0)
  l0:In()
end
function export:f_box_S08M005_CIN_LimpNudleIntro_Main_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = self.MissionLayer
  l0 = self.box_S08M005_CIN_LimpNudleIntro_Main_1
  l1 = self.box_MissionLayer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|1605438727", "1605438727", "S08M005_Main", "box_S08M005_CIN_LimpNudleIntro_Main_1.Out", "box_MissionLayer_v2_4.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|234897592"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|1151368819", "1151368819", "S08M005_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_11
  l1 = self.box_S08M005_CIN_LimpNudleIntro_Main_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|1675763949", "1675763949", "S08M005_Main", "box_MissionCheckpointReach_11.Out", "box_S08M005_CIN_LimpNudleIntro_Main_1.In", l0, l1)
  l1:In()
end
function export:f_box_TeleportPlayerInsideHma_3_Done()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_TeleportPlayerInsideHma_3
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|1702718791", "1702718791", "S08M005_Main", "box_TeleportPlayerInsideHma_3.Done", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Get_Player_ID_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|152550983", "152550983", "S08M005_Main", "box_Get_Player_ID_5.Out", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionLayer_v2_4_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_6
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONSUCCESS",
    item = "MissionComplete_upper",
    id = "165443"
  }
  l0 = self.box_MissionLayer_v2_4
  l1 = self.box_MissionController_v4_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|810807945", "810807945", "S08M005_Main", "box_MissionLayer_v2_4.Unloaded", "box_MissionController_v4_6.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_11
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_9
  l1 = self.box_MissionCheckpointReach_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|1280284370", "1280284370", "S08M005_Main", "box_MultipleOR_9.Out", "box_MissionCheckpointReach_11.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_8_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|1287769399"
  l0.Out = self.f_box_Get_Player_ID_5_Out
  l0 = self.box_MissionLayer_v2_8
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M005\\S08M005.domino|@S08M005_Main|559909560", "559909560", "S08M005_Main", "box_MissionLayer_v2_8.Loaded", "box_Get_Player_ID_5.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_9()
end
_compilerVersion = 4
