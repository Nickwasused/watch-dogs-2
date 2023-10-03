export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self[3] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_3_Has
  l0.HasNOT = DummyFunction
  self[1] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_4_HasNOT
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
  l0 = self[3]
  l0.ProgressionTag = "ProgressionTag.9223372055970893578"
  l0:HasProgressionTag()
end
function export:f_3_Has()
  local l0
  self = self._graph
  l0 = self[4]
  l0.ProgressionTag = "ProgressionTag.9223372055970893581"
  l0:HasProgressionTag()
end
function export:f_4_HasNOT()
  local l0
  self = self._graph
  l0 = self[1]
  l0.ItemDB = "Items.9223372055970893582"
  l0:ExecuteRewards()
end
_compilerVersion = 4
