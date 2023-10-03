export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ConversationMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[2] = cbox:CreateBox("domino/System/ConversationMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnFinished = self.f_2_OnFinished
  l0.WasPlayed = self.f_2_WasPlayed
  l0.WasNotPlayed = self.f_2_WasNotPlayed
  self[3] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_3_Out
  self[1] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[1]
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
  self:en_2()
  l0 = self[2]
  l0:GetPlayState()
end
function export:f_2_OnFinished()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(0)
end
function export:f_2_WasNotPlayed()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_2_WasPlayed()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(1)
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Succeed()
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.Conversation = "ConversationSetting.9223372055039781627"
end
_compilerVersion = 4
