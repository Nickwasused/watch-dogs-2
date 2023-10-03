export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/SimpleNode.lua")
end
function export:Init(cbox)
  self._name = "S01M020_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Activation"
  self.MissionStart = DummyFunction
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
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Activation|199726622"
  l0.Out = self.f_box_Simple_Node_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Activation|713972284", "713972284", "S01M020_Activation", "In", "box_Simple_Node_1.In", self, l0)
  l0:In()
end
function export:f_box_Simple_Node_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M020\\S01M020.domino|@S01M020_Activation|1953292780", "1953292780", "S01M020_Activation", "box_Simple_Node_1.Out", "MissionStart", clone, self)
  self:MissionStart()
end
function export:MissionStart()
end
_compilerVersion = 4
