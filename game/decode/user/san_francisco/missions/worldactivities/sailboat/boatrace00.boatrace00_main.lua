export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ConversationMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[1] = cbox:CreateBox("domino/System/ConversationMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnFinished = self.f_1_OnFinished
  l0.WasPlayed = DummyFunction
  l0.WasNotPlayed = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[2]
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
  l0.Conversation = "ConversationSetting.9223372055039781623"
  l0:Enable()
end
function export:f_1_OnFinished()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Succeed()
end
_compilerVersion = 4
