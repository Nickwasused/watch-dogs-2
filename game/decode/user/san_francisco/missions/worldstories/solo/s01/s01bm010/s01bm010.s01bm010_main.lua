export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ConversationMonitor.lua")
  cbox:RegisterBox("domino/System/DynamicEventController.lua")
  cbox:RegisterBox("domino/System/DynamicEventMonitor.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[9] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_9_RewardsExecuted
  self[1] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[3] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[3]
  l0._graph = self
  self[5] = cbox:CreateBox("domino/System/ConversationMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnFinished = self.f_5_OnFinished
  l0.WasPlayed = DummyFunction
  l0.WasNotPlayed = DummyFunction
  self[12] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_12_RewardsExecuted
  self[2] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[20] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[20]
  l0._graph = self
  l0.NewBeatStarted = self.f_20_NewBeatStarted
  self[21] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_21_Stopped
  l0.Interacted = self.f_21_Interacted
  self[8] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[8]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_8_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[23] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0.MessageCompleted = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0.MessageCompleted = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[6]
  l0._graph = self
  l0.NewBeatStarted = self.f_6_NewBeatStarted
  self[10] = cbox:CreateBox("domino/System/DynamicEventMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Started = DummyFunction
  l0.Succeeded = self.f_10_Succeeded
  l0.Failed = self.f_10_Failed
  self[16] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_16_Out
  self[24] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  l0 = self[24]
  l0._graph = self
  l0.Started = self.f_24_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_24_Interacted
  self[13] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_13_RewardsExecuted
  self[19] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
  self[15] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.MessageCompleted = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  self:en_20()
  l0 = self[20]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_6()
  l0 = self[6]
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  l0 = self[7]
  l0:Input(1)
end
function export:In()
  local l0
  self:en_20()
  l0 = self[20]
  l0:StartNewBeat()
end
function export:f_9_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[2]
  l0.CheckpointList = "CheckPoint_2"
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(0)
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052608855251"
  l0:StartCommunication()
end
function export:f_5_OnFinished()
  local l0
  self = self._graph
  l0 = self[12]
  l0.ItemDB = "Items.9223372050646215588"
  l0:ExecuteRewards()
end
function export:f_12_RewardsExecuted()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:StartNewBeat()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Seconds = 3
  l0:Start()
end
function export:f_20_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01B.S01BM010.Objectives.Objective010",
    item = "Objective",
    id = "569189"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_21_Interacted()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Stop()
end
function export:f_21_Stopped()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective013",
    item = "Objective",
    id = "689550"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowLastObjectiveComplete()
end
function export:f_8_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[13]
  l0.ItemDB = "Items.9223372045955692447"
  l0:ExecuteRewards()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Succeed()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0.ItemDB = "Items.9223372050426161741"
  l0:ExecuteRewards()
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(0)
end
function export:f_22_Out()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Start()
end
function export:f_6_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01B.S01BM010.Objectives.Objective020",
    item = "Objective",
    id = "569188"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_11_Forced()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_10_Failed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0:In()
end
function export:f_10_Succeeded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicEventController.lua")]
  l0.DynamicEvent = "DynamicEvent.9223372045956153020"
  l0._graph = self
  l0.Forced = self.f_11_Forced
  l0:Force()
end
function export:f_24_Interacted()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Stop()
end
function export:f_24_Started()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Conversation = "ConversationSetting.9223372050327905387"
  l0:Enable()
end
function export:f_13_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective013",
    item = "Objective",
    id = "689550"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_19_Out()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_15_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(1)
end
function export:f_4_Out()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Start()
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.ProgressionLayer = "ProgressionLayers.9223372050524369926"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.IOPBoxEntity = "9223372047426345164"
  l0.MapPoint = "9223372065312139445"
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.ProgressionLayer = "ProgressionLayers.9223372050524369926"
  l0.Checkpoint = "CheckPoint_1"
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.DynamicEvent = "DynamicEvent.9223372045956153020"
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.CLO = "9223372050327905383"
  l0.IsManagingInteraction = 0
end
_compilerVersion = 4
