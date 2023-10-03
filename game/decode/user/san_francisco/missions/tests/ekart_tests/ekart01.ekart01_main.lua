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
  self.PlayerEntity = nil
  self[2] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/RaceController.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Racer = 2}
  l0.Started = DummyFunction
  l0.Finished = self.f_8_Finished
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
  l0 = self[2]
  l0.LayerName = "eKart01_Main"
  l0:Load()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Race = "RaceDbConfig.9223372046908759017"
  l0.Racer[0] = "RacerDbConfig.9223372046748754745"
  l0.Racer[1] = "RacerDbConfig.9223372046748744898"
  l0.LapsCount = 2
  l0:Start()
end
function export:f_8_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = "MissionList.9223372046134581117"
  l0._graph = self
  l0.Out = DummyFunction
  l0:TerminateMission()
end
_compilerVersion = 4
