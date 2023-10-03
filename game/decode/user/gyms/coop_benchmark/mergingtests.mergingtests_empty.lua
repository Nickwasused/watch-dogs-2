export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/MissionController_v2.lua")
end
function export:In()
  local l0
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = "MissionList.10548367"
  l0._graph = self
  l0.Out = DummyFunction
  l0:TerminateMission()
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
_compilerVersion = 4
