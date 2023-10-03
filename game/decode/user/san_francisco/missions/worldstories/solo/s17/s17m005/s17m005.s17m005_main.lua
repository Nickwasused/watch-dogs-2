export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Followers = 0
  self[14] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_14_MessageCompleted
  self[1] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.MessageCompleted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = self.f_2_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[15]
  l0._graph = self
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
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17A.S17M005.Objectives",
    item = "Objective",
    id = "698200"
  }
  l0:ShowNewObjective()
end
function export:f_14_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Succeed()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.ProgressionTag = "ProgressionTag.9223372070888017001"
  l0:Enable()
end
function export:f_2_TagIsOwned()
  local l0
  self = self._graph
  l0 = self[14]
  l0:ShowMissionComplete()
end
_compilerVersion = 4
