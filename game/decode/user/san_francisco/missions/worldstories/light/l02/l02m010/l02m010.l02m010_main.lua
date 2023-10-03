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
  self.Target = 0
  self.Target_Intel = 1
  self.Index = 0
  self[15] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[15]
  l0._graph = self
  l0.NewBeatStarted = self.f_15_NewBeatStarted
  self[23] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_23_RewardsExecuted
  self[13] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_5_Hacked
  self[1] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_1_Disabled
  l0.OnPhoneCallEnded = self.f_1_OnPhoneCallEnded
  self[24] = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_24_OnCommunicationFinished
  self[28] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[28]
  l0._graph = self
  self[21] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[21]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_21_HasNOT
  self[12] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[12]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[26] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_26_Out
  self[22] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_9_Out
  self[7] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_7_Has
  l0.HasNOT = self.f_7_HasNOT
  self[17] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[17]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_6_Hacked
  self[27] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[14] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_14_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[18] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
  self[2] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_2_Disabled
  l0.OnPhoneCallEnded = self.f_2_OnPhoneCallEnded
  self[20] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_20_RewardsExecuted
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
  self:en_15()
  l0 = self[15]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self[26]
  l0:Input(1)
end
function export:In()
  local l0
  self:en_15()
  l0 = self[15]
  l0:StartNewBeat()
end
function export:f_15_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L01M010A.Objectives.Objective010",
    item = "Objective",
    id = "397633"
  }
  l0.IncrementalObjectiveTotal = 2
  l0:ShowNewObjective()
end
function export:f_23_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[17]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049814637216"
  l0:StartCommunication()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0.Out[2] = self.f_16_Out_2
  l0:In()
end
function export:f_5_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_1_Disabled()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(1)
end
function export:f_1_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_24_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(0)
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0.CLO = "9223372048076545096"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372046384707494"
  l0:Start()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CLO = "9223372048076545102"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372046384707495"
  l0:Start()
end
function export:f_16_Out_2()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L01M010A.Objectives.Objective010",
    item = "Objective",
    id = "397633"
  }
  l0:Enable()
end
function export:f_21_HasNOT()
  local l0
  self = self._graph
  l0 = self[23]
  l0.ItemDB = "Items.9223372064201550769"
  l0:ExecuteRewards()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[28]
  l0:Succeed()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(0)
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.ProgressionTag = "ProgressionTag.9223372064201550767"
  l0:HasProgressionTag()
end
function export:f_7_Has()
  local l0
  self = self._graph
  l0 = self[21]
  l0.ProgressionTag = "ProgressionTag.9223372064201550768"
  l0:HasProgressionTag()
end
function export:f_7_HasNOT()
  local l0
  self = self._graph
  l0 = self[20]
  l0.ItemDB = "Items.9223372064201550766"
  l0:ExecuteRewards()
end
function export:f_6_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = self.f_11_Out_1
  l0:In()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[24]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049814637216"
  l0:Enable()
end
function export:f_14_ObjectiveCompleted()
  local l0
  self = self._graph
  l0 = self[27]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L01M010A.Objectives.Objective010",
    item = "Objective",
    id = "397633"
  }
  l0:IncrementObjective()
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(0)
end
function export:f_2_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_20_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[12]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049814637215"
  l0:StartCommunication()
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_11_Out_1()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(1)
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.ProgressionLayer = "ProgressionLayers.9223372047103016062"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.ItemDb = "Items.9223372050160469617"
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.ItemDb = "Items.9223372050160469616"
end
_compilerVersion = 4
