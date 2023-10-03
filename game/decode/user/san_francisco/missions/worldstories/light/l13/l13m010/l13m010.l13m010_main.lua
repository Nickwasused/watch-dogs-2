export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Photo_Gameplay.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Audio = 1
  self.reward = 0
  self[9] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.MessageCompleted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_15_HasNOT
  self[23] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Photo_Gameplay.lua")
  l0 = self[23]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_23_Stopped
  l0.PhotoTaken = self.f_23_PhotoTaken
  self[31] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_31_Out
  l0.ResetOut = DummyFunction
  self[12] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Photo_Gameplay.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_12_Stopped
  l0.PhotoTaken = self.f_12_PhotoTaken
  self[3] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[3]
  l0._graph = self
  self[39] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  l0 = self[39]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_39_Located
  self[2] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[2]
  l0._graph = self
  l0.NewBeatStarted = self.f_2_NewBeatStarted
  self[4] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_4_RewardsExecuted
  self[14] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_7_OnPhoneCallEnded
  self[13] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Photo_Gameplay.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_13_Stopped
  l0.PhotoTaken = self.f_13_PhotoTaken
  self[11] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_11_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_1_MessageCompleted
  self[30] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_30_RewardsExecuted
  self[28] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[28]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_5_Has
  l0.HasNOT = self.f_5_HasNOT
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
  self[8] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_8_RewardsExecuted
  self[25] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  l0 = self[25]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_25_Located
  self[24] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  l0 = self[24]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_24_Located
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
  self:en_2()
  l0 = self[2]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_3()
  l0 = self[3]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_2()
  l0 = self[2]
  l0:StartNewBeat()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0:In(0)
end
function export:f_15_HasNOT()
  local l0
  self = self._graph
  l0 = self[8]
  l0.ItemDB = "Items.9223372068922211570"
  l0:ExecuteRewards()
end
function export:f_23_PhotoTaken()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Stop()
end
function export:f_23_Stopped()
  local l0
  self = self._graph
  l0 = self[9]
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective011",
    item = "Objective",
    id = "685277"
  }
  l0:IncrementObjective()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.ProgressionTag = "ProgressionTag.9223372068922211568"
  l0:HasProgressionTag()
end
function export:f_12_PhotoTaken()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Stop()
end
function export:f_12_Stopped()
  local l0
  self = self._graph
  l0 = self[10]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective012",
    item = "Objective",
    id = "685278"
  }
  l0:IncrementObjective()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  l0 = self[25]
  l0.CLO = "9223372052852859073"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052852859065"
  l0.DistrictsDB = "Districts.9223372048308080021"
  l0:Start()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[24]
  l0.CLO = "9223372052852859076"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052852859066"
  l0.DistrictsDB = "Districts.9223372048308080054"
  l0:Start()
end
function export:f_6_Out_2()
  local l0
  self = self._graph
  l0 = self[39]
  l0.CLO = "9223372052852859085"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052852859094"
  l0.DistrictsDB = "Districts.9223372048308080045"
  l0:Start()
end
function export:f_6_Out_3()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective010",
    item = "Objective",
    id = "457708"
  }
  l0:Enable()
end
function export:f_39_Located()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Start()
end
function export:f_2_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[2]
  self.PlayerEntity = l0.PlayerEntity
  l0 = self[1]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective010",
    item = "Objective",
    id = "457708"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective011",
    item = "Objective",
    id = "685277"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective012",
    item = "Objective",
    id = "685278"
  }
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective013",
    item = "Objective",
    id = "685279"
  }
  l0:ShowNewObjective()
end
function export:f_4_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[30]
  l0.ItemDB = "Items.9223372059111819661"
  l0:ExecuteRewards()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0:In(2)
end
function export:f_7_OnPhoneCallEnded()
  local l0
  self = self._graph
  l0 = self[28]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357369878"
  l0:StartCommunication()
end
function export:f_13_PhotoTaken()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Stop()
end
function export:f_13_Stopped()
  local l0
  self = self._graph
  l0 = self[14]
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M010.Objectives.Objective013",
    item = "Objective",
    id = "685279"
  }
  l0:IncrementObjective()
end
function export:f_11_ObjectiveCompleted()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:End()
end
function export:f_1_MessageCompleted()
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
function export:f_30_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[7]
  l0.ItemDb = "Items.9223372059111819661"
  l0:Enable()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0:In(1)
end
function export:f_5_Has()
  local l0
  self = self._graph
  l0 = self[15]
  l0.ProgressionTag = "ProgressionTag.9223372068922211569"
  l0:HasProgressionTag()
end
function export:f_5_HasNOT()
  local l0
  self = self._graph
  l0 = self[4]
  l0.ItemDB = "Items.9223372068922211567"
  l0:ExecuteRewards()
end
function export:f_8_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[27]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357369877"
  l0:StartCommunication()
end
function export:f_25_Located()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Start()
end
function export:f_24_Located()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Start()
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.CLO = "9223372052852859073"
  l0.ProgressionTag = "ProgressionTag.9223372052852859065"
  l0.MapPoint = "9223372055967565047"
  l0.PhotoType = "Any"
  l0.ProgressionTagItem = "Items.9223372052852859061"
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.CLO = "9223372052852859076"
  l0.ProgressionTag = "ProgressionTag.9223372052852859066"
  l0.MapPoint = "9223372055967565045"
  l0.PhotoType = "Any"
  l0.ProgressionTagItem = "Items.9223372052852859062"
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357369879"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 1
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.ProgressionLayer = "ProgressionLayers.9223372052852859055"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.CLO = "9223372052852859085"
  l0.ProgressionTag = "ProgressionTag.9223372052852859094"
  l0.MapPoint = "9223372055967565043"
  l0.PhotoType = "Any"
  l0.ProgressionTagItem = "Items.9223372052852859084"
end
_compilerVersion = 4
