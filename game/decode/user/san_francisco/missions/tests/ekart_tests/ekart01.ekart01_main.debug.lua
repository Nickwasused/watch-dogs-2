export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/MissionController_v2.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/RaceController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "eKart01_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\ekart_tests\\ekart01.domino|@eKart01_Main"
  self.PlayerEntity = nil
  self.box_MissionLayer_v2_2 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\ekart_tests\\ekart01.domino|@eKart01_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_RaceController_8 = cbox:CreateBox("Domino/System/RaceController.lua")
  l0 = self.box_RaceController_8
  l0._graph = self
  l0._name = "box_RaceController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\ekart_tests\\ekart01.domino|@eKart01_Main|1142809669"
  l0._DynamicAnchors = {Racer = 2}
  l0.Started = DummyFunction
  l0.Finished = self.f_box_RaceController_8_Finished
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "eKart01_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\ekart_tests\\ekart01.domino|@eKart01_Main|573303869", "573303869", "eKart01_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceController_8
  l0.Race = "RaceDbConfig.9223372046908759017"
  l0.Racer[0] = "RacerDbConfig.9223372046748754745"
  l0.Racer[1] = "RacerDbConfig.9223372046748744898"
  l0.LapsCount = 2
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_RaceController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\ekart_tests\\ekart01.domino|@eKart01_Main|1724255376", "1724255376", "eKart01_Main", "box_MissionLayer_v2_2.Loaded", "box_RaceController_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_RaceController_8_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = "MissionList.9223372046134581117"
  l0._graph = self
  l0._name = "box_MissionController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\ekart_tests\\ekart01.domino|@eKart01_Main|2004377513"
  l0.Out = DummyFunction
  l0 = self.box_RaceController_8
  l1 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\ekart_tests\\ekart01.domino|@eKart01_Main|2051703436", "2051703436", "eKart01_Main", "box_RaceController_8.Finished", "box_MissionController_v2_9.TerminateMission", l0, l1)
  l1:TerminateMission()
end
_compilerVersion = 4
