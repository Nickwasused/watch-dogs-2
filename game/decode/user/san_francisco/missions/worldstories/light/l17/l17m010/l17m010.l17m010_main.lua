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
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[6] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_6_Hacked
  self[8] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_7_OnPhoneCallEnded
  self[15] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[15]
  l0._graph = self
  l0.NewBeatStarted = self.f_15_NewBeatStarted
  self[2] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_2_OnPhoneCallEnded
  self[12] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = self.f_12_Enabled
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_12_OnPhoneCallEnded
  self[17] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_17_RewardsExecuted
  self[16] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_16_Has
  l0.HasNOT = self.f_16_HasNOT
  self[14] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[14]
  l0._graph = self
  l0.StartCommunicationOut = self.f_14_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_14_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[13] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[13]
  l0._graph = self
  self[9] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.MessageCompleted = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_1_Hacked
  self[18] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
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
  self[4] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[4]
  l0._graph = self
  l0.NewBeatStarted = self.f_4_NewBeatStarted
  self[3] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[3]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_3_OnCommunicationFinished
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
function export:CheckPoint_0()
  local l0
  self:en_15()
  l0 = self[15]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_4()
  l0 = self[4]
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  self:en_13()
  l0 = self[13]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[8]
  l0.Seconds = 15
  l0:Start()
end
function export:f_6_Hacked()
  local l0
  self = self._graph
  l0 = self[7]
  l0.ItemDb = "Items.9223372051775435961"
  l0:Enable()
end
function export:f_8_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[10]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373372"
  l0:StartCommunication()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CLO = "9223372050359584205"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_7_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:End()
end
function export:f_15_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L17.L17M010.ActivationObjective",
    item = "ActivationObjective",
    id = "457759"
  }
  l0:ShowNewObjective()
end
function export:f_2_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:StartNewBeat()
end
function export:f_12_Enabled()
  local l0
  self = self._graph
  l0 = self[9]
  l0.ItemDB = "Items.9223372059111819663"
  l0:ExecuteRewards()
end
function export:f_12_OnPhoneCallEnded()
  local l0
  self = self._graph
  l0 = self[14]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436196"
  l0:StartCommunication()
end
function export:f_17_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(1)
end
function export:f_16_Has()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(0)
end
function export:f_16_HasNOT()
  local l0
  self = self._graph
  l0 = self[3]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436198"
  l0:StartCommunication()
end
function export:f_14_OnCommunicationStarted()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:StartNewBeat()
end
function export:f_14_StartCommunicationOut()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CLO = "9223372050359584208"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_1_Hacked()
  local l0
  self = self._graph
  l0 = self[2]
  l0.ItemDb = "Items.9223372051812100254"
  l0:Enable()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L17.L17M010.ActivationObjective",
    item = "ActivationObjective",
    id = "457759"
  }
  l0:ShowNewObjective()
end
function export:f_10_OnCommunicationFinished()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_4_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[16]
  l0.ProgressionTag = "ProgressionTag.9223372050359526720"
  l0:HasProgressionTag()
end
function export:f_3_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[17]
  l0.ItemDB = "Items.9223372050359526716"
  l0:ExecuteRewards()
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.ProgressionLayer = "ProgressionLayers.9223372050359526707"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.ItemDb = "Items.9223372059111819663"
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372051775436199"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.ProgressionLayer = "ProgressionLayers.9223372071075552196"
  l0.Checkpoint = "CheckPoint_1"
end
_compilerVersion = 4
