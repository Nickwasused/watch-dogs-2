export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[10] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[10]
  l0._graph = self
  l0.NewBeatStarted = self.f_10_NewBeatStarted
  self[6] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_6_OnPhoneCallEnded
  self[4] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_4_Hacked
  self[9] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_9_Hacked
  self[8] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[11] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_11_Has
  l0.HasNOT = self.f_11_HasNOT
  self[5] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_5_OnPhoneCallEnded
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[1]
  l0._graph = self
  l0.NewBeatStarted = self.f_1_NewBeatStarted
  self[3] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[3]
  l0._graph = self
  self[2] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.MessageCompleted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[13]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_13_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[12] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_12_RewardsExecuted
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
  self:en_1()
  l0 = self[1]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_10()
  l0 = self[10]
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  self:en_3()
  l0 = self[3]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_1()
  l0 = self[1]
  l0:StartNewBeat()
end
function export:f_10_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[11]
  l0.ProgressionTag = "ProgressionTag.9223372072565784511"
  l0:HasProgressionTag()
end
function export:f_6_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:End()
end
function export:f_4_Hacked()
  local l0
  self = self._graph
  l0 = self[5]
  l0.ItemDb = "Items.9223372051775435971"
  l0:Enable()
end
function export:f_9_Hacked()
  local l0
  self = self._graph
  l0 = self[6]
  l0.ItemDb = "Items.9223372050495846790"
  l0:Enable()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.CLO = "9223372049726146859"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M010.ActivationObjective",
    item = "ActivationObjective",
    id = "550169"
  }
  l0:ShowNewObjective()
end
function export:f_11_Has()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_11_HasNOT()
  local l0
  self = self._graph
  l0 = self[13]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052611567231"
  l0:StartCommunication()
end
function export:f_5_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:StartNewBeat()
end
function export:f_1_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M010.ActivationObjective",
    item = "ActivationObjective",
    id = "550169"
  }
  l0:ShowNewObjective()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.CLO = "9223372049726146858"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_13_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[12]
  l0.ItemDB = "Items.9223372072565784510"
  l0:ExecuteRewards()
end
function export:f_12_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.ProgressionLayer = "ProgressionLayers.9223372070253267483"
  l0.Checkpoint = "CheckPoint_1"
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.ProgressionLayer = "ProgressionLayers.9223372049634201759"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372052611639472"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
