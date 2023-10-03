export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "s01m020_Sitara"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@s01m020_Sitara"
  self.Out = DummyFunction
  self.Entity_Sitara = nil
  self.Sitara_S01M010 = nil
  self.Entity_Horatio = nil
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@s01m020_Sitara|1008364628"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_6_OnUserInPlace
  self.box_UnspawnController_1 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_1
  l0._graph = self
  l0._name = "box_UnspawnController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@s01m020_Sitara|1312390587"
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = self.f_box_UnspawnController_1_AutomaticCLOUnspawned
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
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
  l0 = self.box_UnspawnController_1
  l0.CLO = "9223372047464636836"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@s01m020_Sitara|979003989", "979003989", "s01m020_Sitara", "In", "box_UnspawnController_1.UnspawnAutomaticCLO", self, l0)
  l0:UnspawnAutomaticCLO()
end
function export:f_box_CLOController_6_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_6
  self.Sitara_S01M010 = l0.UserID
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@s01m020_Sitara|624375996", "624375996", "s01m020_Sitara", "box_CLOController_6.OnUserInPlace", "Out", l0, self)
  self:Out()
end
function export:f_box_UnspawnController_1_AutomaticCLOUnspawned()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  l0.CLO = "9223372062859881706"
  l0 = self.box_UnspawnController_1
  l1 = self.box_CLOController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@s01m020_Sitara|1020491334", "1020491334", "s01m020_Sitara", "box_UnspawnController_1.AutomaticCLOUnspawned", "box_CLOController_6.Activate", l0, l1)
  l1:Activate()
end
function export:Out()
end
_compilerVersion = 4
