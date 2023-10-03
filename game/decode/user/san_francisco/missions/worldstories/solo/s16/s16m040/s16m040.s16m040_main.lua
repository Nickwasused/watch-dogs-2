export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v2.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.number_of_loot_item = 0
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[22] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[14] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_14_HasNOT
  self[11] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_11_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[9] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_9_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[18] = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[19]
  l0._graph = self
  self[15] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_15_HasNOT
  self[16] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = self.f_16_Enabled
  l0.Disabled = self.f_16_Disabled
  l0.TagIsOwned = self.f_16_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_3_MessageRequested
  l0.MessageCompleted = DummyFunction
  self[31] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[31]
  l0._graph = self
  l0.Attached = self.f_31_Attached
  self[12] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_12_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[4] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = self.f_4_Disabled
  l0.TagIsOwned = self.f_4_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[17] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = self.f_17_Enabled
  l0.Disabled = self.f_17_Disabled
  l0.TagIsOwned = self.f_17_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_5_HasNOT
  self[21] = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = self.f_8_Completed
  l0.NotCompleted = self.f_8_NotCompleted
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_13_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[7]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_7_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
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
  l0 = self[22]
  l0.Seconds = 2
  l0:Start()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  l0 = self[14]
  l0.ProgressionTag = "ProgressionTag.9223372048887084907"
  l0:HasProgressionTag()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[5]
  l0.ProgressionTag = "ProgressionTag.9223372048887084908"
  l0:HasProgressionTag()
end
function export:f_6_Out_2()
  local l0
  self = self._graph
  l0 = self[15]
  l0.ProgressionTag = "ProgressionTag.9223372048887084909"
  l0:HasProgressionTag()
end
function export:f_6_Out_3()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Objective = {
    section = "",
    item = "",
    id = "345161"
  }
  l0:Enable()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0:ShowMissionComplete()
end
function export:f_22_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_14_HasNOT()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Enable()
end
function export:f_11_Hidden()
  local l0
  self = self._graph
  l0 = self[18]
  l0.ObjectiveSub1 = {
    section = "",
    item = "",
    id = "548990"
  }
  l0:IncrementObjective()
end
function export:f_9_ObjectiveCompleted()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Mission = "MissionList.9223372046563431288"
  l0:CheckCompletion()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[31]
  l0.Parent = self.PlayerEntity
  l0.Child = "9223372047070512919"
  l0.zPosOffset = 0.5
  l0:Attach()
end
function export:f_15_HasNOT()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Enable()
end
function export:f_16_Disabled()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Hide()
end
function export:f_16_Enabled()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Show()
end
function export:f_16_TagIsOwned()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Disable()
end
function export:f_3_MessageRequested()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Succeed()
end
function export:f_31_Attached()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Objective = {
    section = "",
    item = "",
    id = "345161"
  }
  l0.ObjectiveSub1 = {
    section = "",
    item = "",
    id = "548990"
  }
  l0.ObjectiveSub2 = {
    section = "",
    item = "",
    id = "548991"
  }
  l0.ObjectiveSub3 = {
    section = "",
    item = "",
    id = "548992"
  }
  l0:ShowNewObjective()
end
function export:f_12_Hidden()
  local l0
  self = self._graph
  l0 = self[21]
  l0.ObjectiveSub2 = {
    section = "",
    item = "",
    id = "548991"
  }
  l0:IncrementObjective()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Hide()
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Show()
end
function export:f_4_TagIsOwned()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_17_Disabled()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Hide()
end
function export:f_17_Enabled()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Show()
end
function export:f_17_TagIsOwned()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Disable()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0.Out[2] = self.f_6_Out_2
  l0.Out[3] = self.f_6_Out_3
  l0:In()
end
function export:f_5_HasNOT()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_8_Completed()
  local l0
  self = self._graph
  l0 = self[7]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421345778"
  l0:StartCommunication()
end
function export:f_8_NotCompleted()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_13_Hidden()
  local l0
  self = self._graph
  l0 = self[20]
  l0.ObjectiveSub3 = {
    section = "",
    item = "",
    id = "548992"
  }
  l0:IncrementObjective()
end
function export:f_7_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.MapPoint = "9223372046674933889"
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.ProgressionTag = "ProgressionTag.9223372048887084909"
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.MapPoint = "9223372046674933891"
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.ProgressionTag = "ProgressionTag.9223372048887084908"
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.ProgressionTag = "ProgressionTag.9223372048887084907"
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.MapPoint = "9223372046674933887"
end
_compilerVersion = 4
