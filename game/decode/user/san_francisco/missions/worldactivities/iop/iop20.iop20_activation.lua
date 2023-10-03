export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self[2] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[1]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_1_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[6] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_5_HasNOT
  self[4] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[4]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_4_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[3] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_3_OnPhoneCallEnded
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
  l0 = self[5]
  l0.ProgressionTag = "ProgressionTag.9223372066541981998"
  l0:HasProgressionTag()
end
function export:f_1_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[3]
  l0.ItemDb = "Items.9223372050495846413"
  l0:Enable()
end
function export:f_5_HasNOT()
  local l0
  self = self._graph
  l0 = self[1]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357371047"
  l0:StartCommunication()
end
function export:f_4_OnCommunicationStarted()
  local l0
  self = self._graph
  l0 = self[6]
  l0.ItemDB = "Items.9223372066541981997"
  l0:ExecuteRewards()
end
function export:f_3_Enabled()
  local l0
  self = self._graph
  l0 = self[2]
  l0.ItemDB = "Items.9223372050495846413"
  l0:ExecuteRewards()
end
function export:f_3_OnPhoneCallEnded()
  local l0
  self = self._graph
  l0 = self[4]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495847717"
  l0:StartCommunication()
end
_compilerVersion = 4
