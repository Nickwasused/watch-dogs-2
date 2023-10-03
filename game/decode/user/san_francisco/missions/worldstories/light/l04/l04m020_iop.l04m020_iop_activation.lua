export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.L04M020_ProximityTrigger_NearOffice = "9223372055951009986"
  self.Jumper_Activation = nil
  self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_2 = "9223372064004749291"
  self[5] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[2]
  l0._graph = self
  l0.StartCommunicationOut = self.f_2_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_1_Disabled
  l0.Enter = self.f_1_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[4] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_4_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
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
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_2_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[4]
  l0.InteractionScriptEntity = self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_2
  l0:Enable()
end
function export:f_1_Disabled()
  local l0
  self = self._graph
  l0 = self[2]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367237"
  l0:StartCommunication()
end
function export:f_1_Enter()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_4_InteractionStarted()
  local l0
  self = self._graph
  l0 = self[5]
  l0.CLO = "9223372058100389387"
  l0.User = self.Jumper_Activation
  l0:UnspawnUser()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Trigger = self.L04M020_ProximityTrigger_NearOffice
end
_compilerVersion = 4
