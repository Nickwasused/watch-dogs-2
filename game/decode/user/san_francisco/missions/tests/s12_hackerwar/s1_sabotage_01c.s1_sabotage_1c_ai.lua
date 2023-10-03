export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ProceduralGameplayToolController.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PawnHacker = nil
  self[1] = cbox:CreateBox("domino/System/ProceduralGameplayToolController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
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
  l0 = self[1]
  l0.PGTMissionArea = "9223372046621052575"
  l0:Start()
end
function export:f_1_Started()
  self = self._graph
  self:Out()
end
function export:Out()
end
_compilerVersion = 4
