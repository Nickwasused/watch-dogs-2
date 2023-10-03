export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugAnnotationTextController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.MissionStartTrigger_29 = "9223372050580349655"
  self.DebugAnnotationTextEntity_390 = "9223372050580408178"
  self.L18_StoryIcon_0 = "9223372050580349657"
  self[2] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[2]
  l0._graph = self
  self[4] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_4_MessageCompleted
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_9_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[10] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[10]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_10_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[6] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_6_Disabled
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = self.f_6_Use
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
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_4_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Succeed()
end
function export:f_3_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367175"
  l0:StartCommunication()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  self:en_7()
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0:Disable()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[3]
  l0.Objective = {
    section = "",
    item = "",
    id = "552636"
  }
  l0:ShowNewObjective()
end
function export:f_7_Enabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Seconds = 8
  l0:Start()
end
function export:f_9_Hidden()
  local l0
  self = self._graph
  self:en_7()
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0:Enable()
end
function export:f_10_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[4]
  l0:ShowLastObjectiveComplete()
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  l0 = self[9]
  l0.MapPoint = self.L18_StoryIcon_0
  l0:Hide()
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = self.MissionStartTrigger_29
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_8_Disabled
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0:SetDisabled()
end
function export:f_6_Use()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:en_7()
  local l0
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = self.DebugAnnotationTextEntity_390
  l0.Text = nil
  l0._graph = self
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Trigger = self.MissionStartTrigger_29
end
_compilerVersion = 4
