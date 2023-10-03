export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = "200"
  self[2] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[2]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_8_Out
  self[11] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_11_Disabled
  l0.InteractionStarted = self.f_11_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[9] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_9_AllLoaded
  self[1] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_1_Disabled
  l0.Enter = self.f_1_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[5] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_5_Disabled
  l0.Enter = self.f_5_Enter
  l0.Leave = self.f_5_Leave
  l0.Use = DummyFunction
  self[7] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = self.f_7_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_7_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[4] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_4_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[9]
  l0.AutoDisable = 1
  l0.Entity = "9223372064450394621"
  l0:Enable()
end
function export:f_8_Out()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:HideNotification()
end
function export:f_11_Disabled()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(2)
end
function export:f_11_InteractionStarted()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Disable()
end
function export:f_9_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_1_Disabled()
  local l0
  self = self._graph
  l0 = self[2]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347578"
  l0:StartCommunication()
end
function export:f_1_Enter()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Enable()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_5_Enter()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Display()
end
function export:f_5_Leave()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(1)
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_7_Enabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_7_InteractionFinished()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_4_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[10]
  l0.SurvivalGuideItemDB = "Items.9223372053993007733"
  l0:Display()
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.InteractionScriptEntity = "9223372047463882747"
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Trigger = "9223372049287451042"
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.Trigger = "9223372053447894511"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.InteractionScriptEntity = "9223372064450394621"
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M020.Objectives.Notification010",
    item = "Notification",
    id = "640629"
  }
  l0.Duration = -1
end
_compilerVersion = 4
