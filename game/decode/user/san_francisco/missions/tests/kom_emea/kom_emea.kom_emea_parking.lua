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
  self.PlayerEntity = nil
  self.AI_KOM_EMEA_PARKING_1 = nil
  self.AI_KOM_EMEA_PARKING_2 = nil
  self[2] = cbox:CreateBox("domino/System/ProceduralGameplayToolController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Aborted = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Loaded = self.f_1_Loaded
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
  l0 = self[1]
  l0.LayerName = "KOM_EMEA_Parking_Main"
  l0:Load()
end
function export:f_1_Loaded()
  local l0
  self = self._graph
  l0 = self[2]
  l0.PGTMissionArea = "9223372047488251011"
  l0:Start()
end
_compilerVersion = 4
