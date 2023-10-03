export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self[8] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
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
  l0 = self[8]
  l0.ItemDB = "Items.9223372070888017000"
  l0:ExecuteRewards()
end
function export:Out()
end
_compilerVersion = 4
