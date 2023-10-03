export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/ProceduralGameplayToolController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "KOM_EMEA_Boathouse"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\KOM_EMEA\\KOM_EMEA.domino|@KOM_EMEA_Boathouse"
  self.box_Procedural_Gameplay_Tool_Controller_2 = cbox:CreateBox("domino/System/ProceduralGameplayToolController.lua")
  l0 = self.box_Procedural_Gameplay_Tool_Controller_2
  l0._graph = self
  l0._name = "box_Procedural_Gameplay_Tool_Controller_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\KOM_EMEA\\KOM_EMEA.domino|@KOM_EMEA_Boathouse|291676152"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Aborted = DummyFunction
  self.box_MissionLayer_v2_1 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_1
  l0._graph = self
  l0._name = "box_MissionLayer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\KOM_EMEA\\KOM_EMEA.domino|@KOM_EMEA_Boathouse|1834131158"
  l0.Loaded = self.f_box_MissionLayer_v2_1_Loaded
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
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_1
  l0.LayerName = "KOM_EMEA_Boathouse_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\KOM_EMEA\\KOM_EMEA.domino|@KOM_EMEA_Boathouse|782082416", "782082416", "KOM_EMEA_Boathouse", "In", "box_MissionLayer_v2_1.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionLayer_v2_1_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Procedural_Gameplay_Tool_Controller_2
  l0.PGTMissionArea = "9223372047525579794"
  l0 = self.box_MissionLayer_v2_1
  l1 = self.box_Procedural_Gameplay_Tool_Controller_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\KOM_EMEA\\KOM_EMEA.domino|@KOM_EMEA_Boathouse|107311894", "107311894", "KOM_EMEA_Boathouse", "box_MissionLayer_v2_1.Loaded", "box_Procedural_Gameplay_Tool_Controller_2.Start", l0, l1)
  l1:Start()
end
_compilerVersion = 4
