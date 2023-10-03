export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/playerphonecommunicationmonitor.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Player = "0"
  self.voices = 0
  self[24] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_24_Has
  l0.HasNOT = self.f_24_HasNOT
  self[38] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_38_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[28] = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self[28]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_28_OnCommunicationFinished
  self[21] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_21_RewardsExecuted
  self[7] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_7_Out
  self[5] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_5_OnPhoneCallEnded
  self[2] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.MessageCompleted = DummyFunction
  self[20] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_20_RewardsExecuted
  self[4] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_4_OnPhoneCallEnded
  self[14] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[14]
  l0._graph = self
  self[27] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[27]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[3] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_3_OnPhoneCallEnded
  self[23] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[23]
  l0._graph = self
  l0.NewBeatStarted = self.f_23_NewBeatStarted
  self[36] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[36]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[17] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_17_Has
  l0.HasNOT = self.f_17_HasNOT
  self[11] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
  self[35] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[35]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_10_RewardsExecuted
  self[37] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_37_Out
  self[29] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[18] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[18]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_18_Hacked
  self[19] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_19_Hacked
  self[1] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_1_HasNOT
  self[22] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[22]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_22_Hacked
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
  self:en_23()
  l0 = self[23]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self[11]
  l0:Input(1)
end
function export:In()
  local l0
  self:en_23()
  l0 = self[23]
  l0:StartNewBeat()
end
function export:f_24_Has()
  local l0
  self = self._graph
  l0 = self[1]
  l0.ProgressionTag = "ProgressionTag.9223372066822572842"
  l0:HasProgressionTag()
end
function export:f_24_HasNOT()
  local l0
  self = self._graph
  l0 = self[21]
  l0.ItemDB = "Items.9223372066709406424"
  l0:ExecuteRewards()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0.ItemDb = "Items.9223372049814636764"
  l0:Enable()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0.ItemDb = "Items.9223372049814636765"
  l0:Enable()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(2)
end
function export:f_38_ObjectiveCompleted()
  local l0
  self = self._graph
  l0 = self[15]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_28_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_21_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[36]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049090123374"
  l0:StartCommunication()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L06.L06M010.Objectives.Objective010",
    item = "Objective",
    id = "457809"
  }
  l0:IncrementObjective()
end
function export:f_25_Out_0()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:PreStart()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Start()
end
function export:f_25_Out_2()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:PreStart()
end
function export:f_25_Out_3()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Start()
end
function export:f_25_Out_4()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:PreStart()
end
function export:f_25_Out_5()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Start()
end
function export:f_25_Out_6()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L06.L06M010.Objectives.Objective010",
    item = "Objective",
    id = "457809"
  }
  l0:Enable()
end
function export:f_5_OnPhoneCallEnded()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(0)
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_25_Out_0
  l0.Out[1] = self.f_25_Out_1
  l0.Out[2] = self.f_25_Out_2
  l0.Out[3] = self.f_25_Out_3
  l0.Out[4] = self.f_25_Out_4
  l0.Out[5] = self.f_25_Out_5
  l0.Out[6] = self.f_25_Out_6
  l0:In()
end
function export:f_20_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[35]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049090123373"
  l0:StartCommunication()
end
function export:f_4_OnPhoneCallEnded()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(2)
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[28]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049090123375"
  l0:Enable()
end
function export:f_3_OnPhoneCallEnded()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(1)
end
function export:f_23_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L06.L06M010.Objectives.Objective010",
    item = "Objective",
    id = "457809"
  }
  l0.IncrementalObjectiveTotal = 3
  l0:ShowNewObjective()
end
function export:f_17_Has()
  local l0
  self = self._graph
  l0 = self[24]
  l0.ProgressionTag = "ProgressionTag.9223372066709406421"
  l0:HasProgressionTag()
end
function export:f_17_HasNOT()
  local l0
  self = self._graph
  l0 = self[20]
  l0.ItemDB = "Items.9223372066709406423"
  l0:ExecuteRewards()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Succeed()
end
function export:f_10_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[27]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049090123375"
  l0:StartCommunication()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.ProgressionTag = "ProgressionTag.9223372066709406420"
  l0:HasProgressionTag()
end
function export:f_18_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:f_19_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  l0 = self[3]
  l0.ItemDb = "Items.9223372049957906168"
  l0:Enable()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_1_HasNOT()
  local l0
  self = self._graph
  l0 = self[10]
  l0.ItemDB = "Items.9223372066822572843"
  l0:ExecuteRewards()
end
function export:f_22_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.ProgressionLayer = "ProgressionLayers.9223372047486643325"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.CLO = "9223372054698301514"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372047486643340"
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.CLO = "9223372054698301515"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372047486643341"
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.CLO = "9223372047486648762"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372047486643342"
end
_compilerVersion = 4
