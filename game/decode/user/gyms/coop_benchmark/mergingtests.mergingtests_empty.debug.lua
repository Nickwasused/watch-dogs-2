export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/MissionController_v2.lua")
end
function export:Init(cbox)
  self._name = "MergingTests_Empty"
  self._elementPathId = "DocumentContainer|Gyms\\Coop_Benchmark\\MergingTests.domino|@MergingTests_Empty"
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
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = "MissionList.10548367"
  l0._graph = self
  l0._name = "box_MissionController_v2_1"
  l0._elementPathId = "DocumentContainer|Gyms\\Coop_Benchmark\\MergingTests.domino|@MergingTests_Empty|1507169669"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|Gyms\\Coop_Benchmark\\MergingTests.domino|@MergingTests_Empty|2056869996", "2056869996", "MergingTests_Empty", "In", "box_MissionController_v2_1.TerminateMission", self, l0)
  l0:TerminateMission()
end
_compilerVersion = 4
