export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ProceduralGameplayToolController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S1_Sabotage_1C_AI"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S1_Sabotage_01C.domino|@S1_Sabotage_1C_AI"
  self.Out = DummyFunction
  self.PawnHacker = nil
  self.box_Procedural_Gameplay_Tool_Controller_1 = cbox:CreateBox("domino/System/ProceduralGameplayToolController.lua")
  l0 = self.box_Procedural_Gameplay_Tool_Controller_1
  l0._graph = self
  l0._name = "box_Procedural_Gameplay_Tool_Controller_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S1_Sabotage_01C.domino|@S1_Sabotage_1C_AI|1738990786"
  l0.Started = self.f_box_Procedural_Gameplay_Tool_Controller_1_Started
  l0.Stopped = DummyFunction
  l0.Aborted = DummyFunction
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
  l0 = self.box_Procedural_Gameplay_Tool_Controller_1
  l0.PGTMissionArea = "9223372046621052575"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S1_Sabotage_01C.domino|@S1_Sabotage_1C_AI|1174568845", "1174568845", "S1_Sabotage_1C_AI", "In", "box_Procedural_Gameplay_Tool_Controller_1.Start", self, l0)
  l0:Start()
end
function export:f_box_Procedural_Gameplay_Tool_Controller_1_Started()
  local l0
  self = self._graph
  l0 = self.box_Procedural_Gameplay_Tool_Controller_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S12_HackerWar\\S1_Sabotage_01C.domino|@S1_Sabotage_1C_AI|958185314", "958185314", "S1_Sabotage_1C_AI", "box_Procedural_Gameplay_Tool_Controller_1.Started", "Out", l0, self)
  self:Out()
end
function export:Out()
end
_compilerVersion = 4
