export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/SimpleNode.lua")
end
function export:Init(cbox)
  self._name = "S12_M040C_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\s12_m040c_scr.domino|@S12_M040C_SCR_Main"
  self.out = DummyFunction
  self.PlayerEntity = nil
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
  DrawTextToScreen("Comment: place script here", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: place script here")
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\s12_m040c_scr.domino|@S12_M040C_SCR_Main|472904185"
  l0.Out = self.f_box_Simple_Node_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\s12_m040c_scr.domino|@S12_M040C_SCR_Main|475811681", "475811681", "S12_M040C_SCR_Main", "In", "box_Simple_Node_1.In", self, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\s12_m040c_scr.domino|@S12_M040C_SCR_Main|379663803", "379663803", "S12_M040C_SCR_Main", "box_Simple_Node_1.Out", "out", clone, self)
  self:out()
end
function export:out()
end
_compilerVersion = 4
