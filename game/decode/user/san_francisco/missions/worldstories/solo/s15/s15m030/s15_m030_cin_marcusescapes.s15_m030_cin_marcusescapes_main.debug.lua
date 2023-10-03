export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S15_M030_CIN_MarcusEscapes_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_MarcusEscapes.domino|@S15_M030_CIN_MarcusEscapes_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_OnceOnly_v3_10 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_10
  l0._graph = self
  l0._name = "box_OnceOnly_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_MarcusEscapes.domino|@S15_M030_CIN_MarcusEscapes_Main|124183685"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_10_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_MarcusEscapes.domino|@S15_M030_CIN_MarcusEscapes_Main|680942672"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_Teleport_To_SpawnPoint_3 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_3
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_MarcusEscapes.domino|@S15_M030_CIN_MarcusEscapes_Main|1330279532"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_3_TeleportDone
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
  l0 = self.box_Teleport_To_SpawnPoint_3
  l0.SpawnPoint = "9223372050221835523"
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_MarcusEscapes.domino|@S15_M030_CIN_MarcusEscapes_Main|1846592125", "1846592125", "S15_M030_CIN_MarcusEscapes_Main", "In", "box_Teleport_To_SpawnPoint_3.In", self, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_10_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_MarcusEscapes.domino|@S15_M030_CIN_MarcusEscapes_Main|1966526355", "1966526355", "S15_M030_CIN_MarcusEscapes_Main", "box_OnceOnly_v3_10.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_10()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_MarcusEscapes.domino|@S15_M030_CIN_MarcusEscapes_Main|1709304018", "1709304018", "S15_M030_CIN_MarcusEscapes_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_10.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_10()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_MarcusEscapes.domino|@S15_M030_CIN_MarcusEscapes_Main|1635498819", "1635498819", "S15_M030_CIN_MarcusEscapes_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_10.In", l0, l1)
  l1:In(0)
end
function export:f_box_Teleport_To_SpawnPoint_3_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047683076297"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/S15_MarcusEscapes_CIN/s15_marcusescapes_cin.seq"
  l0 = self.box_Teleport_To_SpawnPoint_3
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\S15_M030_CIN_MarcusEscapes.domino|@S15_M030_CIN_MarcusEscapes_Main|1467432933", "1467432933", "S15_M030_CIN_MarcusEscapes_Main", "box_Teleport_To_SpawnPoint_3.TeleportDone", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_OnceOnly_v3_10()
end
function export:Out()
end
_compilerVersion = 4
