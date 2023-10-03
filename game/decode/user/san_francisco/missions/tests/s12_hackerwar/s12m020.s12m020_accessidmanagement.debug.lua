export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AccessIdController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S12M020_AccessIDManagement"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement"
  self.Blocked = DummyFunction
  self.Unblocked = DummyFunction
  self.box_Edit_the_access_ids_of_a_player_5 = cbox:CreateBox("domino/System/AccessIdController.lua")
  l0 = self.box_Edit_the_access_ids_of_a_player_5
  l0._graph = self
  l0._name = "box_Edit_the_access_ids_of_a_player_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|11207264"
  l0.AddedDisabledAccessId = self.f_box_Edit_the_access_ids_of_a_player_5_AddedDisabledAccessId
  l0.RemovedDisabledAccessId = self.f_box_Edit_the_access_ids_of_a_player_5_RemovedDisabledAccessId
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_Edit_the_access_ids_of_a_player_2 = cbox:CreateBox("domino/System/AccessIdController.lua")
  l0 = self.box_Edit_the_access_ids_of_a_player_2
  l0._graph = self
  l0._name = "box_Edit_the_access_ids_of_a_player_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|155007820"
  l0.AddedDisabledAccessId = self.f_box_Edit_the_access_ids_of_a_player_2_AddedDisabledAccessId
  l0.RemovedDisabledAccessId = self.f_box_Edit_the_access_ids_of_a_player_2_RemovedDisabledAccessId
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_Edit_the_access_ids_of_a_player_1 = cbox:CreateBox("domino/System/AccessIdController.lua")
  l0 = self.box_Edit_the_access_ids_of_a_player_1
  l0._graph = self
  l0._name = "box_Edit_the_access_ids_of_a_player_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|569901965"
  l0.AddedDisabledAccessId = self.f_box_Edit_the_access_ids_of_a_player_1_AddedDisabledAccessId
  l0.RemovedDisabledAccessId = self.f_box_Edit_the_access_ids_of_a_player_1_RemovedDisabledAccessId
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_Edit_the_access_ids_of_a_player_4 = cbox:CreateBox("domino/System/AccessIdController.lua")
  l0 = self.box_Edit_the_access_ids_of_a_player_4
  l0._graph = self
  l0._name = "box_Edit_the_access_ids_of_a_player_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|1520030035"
  l0.AddedDisabledAccessId = self.f_box_Edit_the_access_ids_of_a_player_4_AddedDisabledAccessId
  l0.RemovedDisabledAccessId = self.f_box_Edit_the_access_ids_of_a_player_4_RemovedDisabledAccessId
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_Edit_the_access_ids_of_a_player_3 = cbox:CreateBox("domino/System/AccessIdController.lua")
  l0 = self.box_Edit_the_access_ids_of_a_player_3
  l0._graph = self
  l0._name = "box_Edit_the_access_ids_of_a_player_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|1773062235"
  l0.AddedDisabledAccessId = self.f_box_Edit_the_access_ids_of_a_player_3_AddedDisabledAccessId
  l0.RemovedDisabledAccessId = self.f_box_Edit_the_access_ids_of_a_player_3_RemovedDisabledAccessId
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Block()
  local l0
  self:OnEnter_box_Edit_the_access_ids_of_a_player_1()
  l0 = self.box_Edit_the_access_ids_of_a_player_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|184205400", "184205400", "S12M020_AccessIDManagement", "Block", "box_Edit_the_access_ids_of_a_player_1.BlockAccessId", self, l0)
  l0:BlockAccessId()
end
function export:Unblock()
  local l0
  self:OnEnter_box_Edit_the_access_ids_of_a_player_1()
  l0 = self.box_Edit_the_access_ids_of_a_player_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|1945871169", "1945871169", "S12M020_AccessIDManagement", "Unblock", "box_Edit_the_access_ids_of_a_player_1.UnblockAccessId", self, l0)
  l0:UnblockAccessId()
end
function export:f_box_Edit_the_access_ids_of_a_player_5_AddedDisabledAccessId()
  local l0
  self = self._graph
  l0 = self.box_Edit_the_access_ids_of_a_player_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|766927048", "766927048", "S12M020_AccessIDManagement", "box_Edit_the_access_ids_of_a_player_5.AddedDisabledAccessId", "Blocked", l0, self)
  self:Blocked()
end
function export:f_box_Edit_the_access_ids_of_a_player_5_RemovedDisabledAccessId()
  local l0
  self = self._graph
  l0 = self.box_Edit_the_access_ids_of_a_player_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|1294296323", "1294296323", "S12M020_AccessIDManagement", "box_Edit_the_access_ids_of_a_player_5.RemovedDisabledAccessId", "Unblocked", l0, self)
  self:Unblocked()
end
function export:f_box_Edit_the_access_ids_of_a_player_2_AddedDisabledAccessId()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Edit_the_access_ids_of_a_player_3()
  l0 = self.box_Edit_the_access_ids_of_a_player_2
  l1 = self.box_Edit_the_access_ids_of_a_player_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|1494167963", "1494167963", "S12M020_AccessIDManagement", "box_Edit_the_access_ids_of_a_player_2.AddedDisabledAccessId", "box_Edit_the_access_ids_of_a_player_3.BlockAccessId", l0, l1)
  l1:BlockAccessId()
end
function export:f_box_Edit_the_access_ids_of_a_player_2_RemovedDisabledAccessId()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Edit_the_access_ids_of_a_player_3()
  l0 = self.box_Edit_the_access_ids_of_a_player_2
  l1 = self.box_Edit_the_access_ids_of_a_player_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|188912564", "188912564", "S12M020_AccessIDManagement", "box_Edit_the_access_ids_of_a_player_2.RemovedDisabledAccessId", "box_Edit_the_access_ids_of_a_player_3.UnblockAccessId", l0, l1)
  l1:UnblockAccessId()
end
function export:f_box_Edit_the_access_ids_of_a_player_1_AddedDisabledAccessId()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Edit_the_access_ids_of_a_player_4()
  l0 = self.box_Edit_the_access_ids_of_a_player_1
  l1 = self.box_Edit_the_access_ids_of_a_player_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|1973176648", "1973176648", "S12M020_AccessIDManagement", "box_Edit_the_access_ids_of_a_player_1.AddedDisabledAccessId", "box_Edit_the_access_ids_of_a_player_4.BlockAccessId", l0, l1)
  l1:BlockAccessId()
end
function export:f_box_Edit_the_access_ids_of_a_player_1_RemovedDisabledAccessId()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Edit_the_access_ids_of_a_player_4()
  l0 = self.box_Edit_the_access_ids_of_a_player_1
  l1 = self.box_Edit_the_access_ids_of_a_player_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|742796328", "742796328", "S12M020_AccessIDManagement", "box_Edit_the_access_ids_of_a_player_1.RemovedDisabledAccessId", "box_Edit_the_access_ids_of_a_player_4.UnblockAccessId", l0, l1)
  l1:UnblockAccessId()
end
function export:f_box_Edit_the_access_ids_of_a_player_4_AddedDisabledAccessId()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Edit_the_access_ids_of_a_player_2()
  l0 = self.box_Edit_the_access_ids_of_a_player_4
  l1 = self.box_Edit_the_access_ids_of_a_player_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|368302395", "368302395", "S12M020_AccessIDManagement", "box_Edit_the_access_ids_of_a_player_4.AddedDisabledAccessId", "box_Edit_the_access_ids_of_a_player_2.BlockAccessId", l0, l1)
  l1:BlockAccessId()
end
function export:f_box_Edit_the_access_ids_of_a_player_4_RemovedDisabledAccessId()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Edit_the_access_ids_of_a_player_2()
  l0 = self.box_Edit_the_access_ids_of_a_player_4
  l1 = self.box_Edit_the_access_ids_of_a_player_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|1749174288", "1749174288", "S12M020_AccessIDManagement", "box_Edit_the_access_ids_of_a_player_4.RemovedDisabledAccessId", "box_Edit_the_access_ids_of_a_player_2.UnblockAccessId", l0, l1)
  l1:UnblockAccessId()
end
function export:f_box_Edit_the_access_ids_of_a_player_3_AddedDisabledAccessId()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Edit_the_access_ids_of_a_player_5()
  l0 = self.box_Edit_the_access_ids_of_a_player_3
  l1 = self.box_Edit_the_access_ids_of_a_player_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|1137772070", "1137772070", "S12M020_AccessIDManagement", "box_Edit_the_access_ids_of_a_player_3.AddedDisabledAccessId", "box_Edit_the_access_ids_of_a_player_5.BlockAccessId", l0, l1)
  l1:BlockAccessId()
end
function export:f_box_Edit_the_access_ids_of_a_player_3_RemovedDisabledAccessId()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Edit_the_access_ids_of_a_player_5()
  l0 = self.box_Edit_the_access_ids_of_a_player_3
  l1 = self.box_Edit_the_access_ids_of_a_player_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S12M020.domino|@S12M020_AccessIDManagement|1853421777", "1853421777", "S12M020_AccessIDManagement", "box_Edit_the_access_ids_of_a_player_3.RemovedDisabledAccessId", "box_Edit_the_access_ids_of_a_player_5.UnblockAccessId", l0, l1)
  l1:UnblockAccessId()
end
function export:OnEnter_box_Edit_the_access_ids_of_a_player_5()
  local l0
  l0 = self.box_Edit_the_access_ids_of_a_player_5
  l0.AccessId = "AccessId.9223372048779317208"
end
function export:OnEnter_box_Edit_the_access_ids_of_a_player_2()
  local l0
  l0 = self.box_Edit_the_access_ids_of_a_player_2
  l0.AccessId = "AccessId.9223372048779317222"
end
function export:OnEnter_box_Edit_the_access_ids_of_a_player_1()
  local l0
  l0 = self.box_Edit_the_access_ids_of_a_player_1
  l0.AccessId = "AccessId.9223372048779317221"
end
function export:OnEnter_box_Edit_the_access_ids_of_a_player_4()
  local l0
  l0 = self.box_Edit_the_access_ids_of_a_player_4
  l0.AccessId = "AccessId.9223372048779317219"
end
function export:OnEnter_box_Edit_the_access_ids_of_a_player_3()
  local l0
  l0 = self.box_Edit_the_access_ids_of_a_player_3
  l0.AccessId = "AccessId.9223372048779317209"
end
function export:Blocked()
end
function export:Unblocked()
end
_compilerVersion = 4
