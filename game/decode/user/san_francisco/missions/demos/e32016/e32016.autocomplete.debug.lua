export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
end
function export:Init(cbox)
  local l0
  self._name = "AutoComplete"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\e32016\\E32016.domino|@AutoComplete"
  self.box_MissionController_v4_1 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_1
  l0._graph = self
  l0._name = "box_MissionController_v4_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\e32016\\E32016.domino|@AutoComplete|973056209"
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
  l0 = self.box_MissionController_v4_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\e32016\\E32016.domino|@AutoComplete|637933115", "637933115", "AutoComplete", "In", "box_MissionController_v4_1.Succeed", self, l0)
  l0:Succeed()
end
_compilerVersion = 4
