export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/HackGameplayController.lua")
end
function export:Init(cbox)
  local l0
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Hacked = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/HackGameplayController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.Stopped = self.f_1_Stopped
  l0.Completed = self.f_1_Completed
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  self:en_1()
  l0 = self[1]
  l0:Start()
end
function export:Stop()
  local l0
  self:en_1()
  l0 = self[1]
  l0:Stop()
end
function export:f_1_Completed()
  self = self._graph
  self:Hacked()
end
function export:f_1_Started()
  self = self._graph
  self:Started()
end
function export:f_1_Stopped()
  self = self._graph
  self:Stopped()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.MarkerLocId = self.MarkerLocId
  l0.HackCategoryType = self.HackCategory
  l0.Entity = self.Entity
  l0.CLO = self.CLO
  l0.IsManagingInteraction = self.IsManagingInteraction
  l0.DisplayObjectiveDistance = self.DisplayObjectiveDistance
end
function export:Stopped()
end
function export:Started()
end
function export:Hacked()
end
_compilerVersion = 4
