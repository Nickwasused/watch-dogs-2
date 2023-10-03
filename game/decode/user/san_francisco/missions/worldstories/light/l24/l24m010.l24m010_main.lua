export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:LoadResource("soundbinary/1320896416.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2959190879.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3821701940.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.L24M010_Target_A = "9223372052890982262"
  self.L24M010_Target_B = "9223372052890982264"
  self.L24M010_Target_C = "9223372052890982266"
  self[16] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.MessageCompleted = DummyFunction
  self[4] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = self.f_4_Started
  l0.Stopped = DummyFunction
  l0.Located = self.f_4_Located
  self[24] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_24_RewardsExecuted
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[1]
  l0._graph = self
  self[21] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_21_RewardsExecuted
  self[7] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_5_Hacked
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_6_Out
  self[20] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = self.f_20_Out
  l0.MessageCompleted = DummyFunction
  self[25] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_25_HasNOT
  self[13] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[8] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_8_Hacked
  self[17] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[11] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[11]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_11_Hacked
  self[14] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_14_Has
  l0.HasNOT = self.f_14_HasNOT
  self[2] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.MessageCompleted = DummyFunction
  self[22] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_22_RewardsExecuted
  self[12] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_12_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[10] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = self.f_10_Started
  l0.Stopped = DummyFunction
  l0.Located = self.f_10_Located
  self[9] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = self.f_9_Started
  l0.Stopped = DummyFunction
  l0.Located = self.f_9_Located
  self[15] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[15]
  l0._graph = self
  l0.NewBeatStarted = self.f_15_NewBeatStarted
  self[23] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_23_Has
  l0.HasNOT = self.f_23_HasNOT
  self[18] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = self.f_18_Out
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
  self:en_15()
  l0 = self[15]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_1()
  l0 = self[1]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_15()
  l0 = self[15]
  l0:StartNewBeat()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_4_Located()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Start()
end
function export:f_4_Started()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:PreStart()
end
function export:f_24_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[17]
  l0.SoundId = "soundbinary/2959190879.bnk"
  l0:Start()
end
function export:f_21_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[13]
  l0.SoundId = "soundbinary/3821701940.bnk"
  l0:Start()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.ProgressionTag = "ProgressionTag.9223372065543405249"
  l0:HasProgressionTag()
end
function export:f_5_Hacked()
  local l0
  self = self._graph
  l0 = self[18]
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective3",
    id = "673999"
  }
  l0:IncrementObjective()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "Objective",
    id = "550045"
  }
  l0:IncrementObjective()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(2)
end
function export:f_25_HasNOT()
  local l0
  self = self._graph
  l0 = self[24]
  l0.ItemDB = "Items.9223372065543405253"
  l0:ExecuteRewards()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0.CLO = "9223372054699987797"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052771530885"
  l0.DistrictsDB = "Districts.9223372048308079997"
  l0:Start()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  l0 = self[9]
  l0.CLO = "9223372054699987798"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052771530886"
  l0.DistrictsDB = "Districts.9223372048308079996"
  l0:Start()
end
function export:f_3_Out_2()
  local l0
  self = self._graph
  l0 = self[10]
  l0.CLO = "9223372054699987799"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052771530887"
  l0.DistrictsDB = "Districts.9223372048308079990"
  l0:Start()
end
function export:f_3_Out_3()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "Objective",
    id = "550045"
  }
  l0:Enable()
end
function export:f_8_Hacked()
  local l0
  self = self._graph
  l0 = self[19]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective2",
    id = "673998"
  }
  l0:IncrementObjective()
end
function export:f_11_Hacked()
  local l0
  self = self._graph
  l0 = self[20]
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective1",
    id = "673997"
  }
  l0:IncrementObjective()
end
function export:f_14_Has()
  local l0
  self = self._graph
  l0 = self[23]
  l0.ProgressionTag = "ProgressionTag.9223372065543405250"
  l0:HasProgressionTag()
end
function export:f_14_HasNOT()
  local l0
  self = self._graph
  l0 = self[21]
  l0.ItemDB = "Items.9223372065543405248"
  l0:ExecuteRewards()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0.Out[2] = self.f_3_Out_2
  l0.Out[3] = self.f_3_Out_3
  l0:In()
end
function export:f_22_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[16]
  l0.SoundId = "soundbinary/1320896416.bnk"
  l0:Start()
end
function export:f_12_ObjectiveCompleted()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:End()
end
function export:f_10_Located()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Start()
end
function export:f_10_Started()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:PreStart()
end
function export:f_9_Located()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Start()
end
function export:f_9_Started()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:PreStart()
end
function export:f_15_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "Objective",
    id = "550045"
  }
  l0.IncrementalObjectiveTotal = 3
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective1",
    id = "673997"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective2",
    id = "673998"
  }
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective3",
    id = "673999"
  }
  l0:ShowNewObjective()
end
function export:f_23_Has()
  local l0
  self = self._graph
  l0 = self[25]
  l0.ProgressionTag = "ProgressionTag.9223372065543405251"
  l0:HasProgressionTag()
end
function export:f_23_HasNOT()
  local l0
  self = self._graph
  l0 = self[22]
  l0.ItemDB = "Items.9223372065543405252"
  l0:ExecuteRewards()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367696"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 1
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.CLO = "9223372054699987797"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372052771530885"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.CLO = "9223372054699987798"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372052771530886"
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.CLO = "9223372054699987799"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372052771530887"
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.ProgressionLayer = "ProgressionLayers.9223372052771457738"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
