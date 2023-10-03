export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/1878297042.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[25] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[25]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_25_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[26] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_26_Disabled
  l0.Enter = self.f_26_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[27] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[1]
  l0._graph = self
  l0.NewBeatStarted = self.f_1_NewBeatStarted
  self[23] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[23]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_23_Hacked
  self[22] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_22_Disabled
  l0.OnPhoneCallEnded = self.f_22_OnPhoneCallEnded
  self[7] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = self.f_7_Started
  l0.Stopped = DummyFunction
  l0.Reached = self.f_7_Reached
  self[24] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[24]
  l0._graph = self
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
  self:en_24()
  l0 = self[24]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_1()
  l0 = self[1]
  l0:StartNewBeat()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372071887326081"
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Start()
end
function export:f_25_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[23]
  l0.CLO = "9223372056502797993"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_26_Disabled()
  local l0
  self = self._graph
  l0 = self[27]
  l0.SoundId = "soundbinary/1878297042.bnk"
  l0:Start()
end
function export:f_26_Enter()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:Disable()
end
function export:f_1_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L26.L26M020.ActivationObjective",
    item = "ActivationObjective",
    id = "550080"
  }
  l0:ShowNewObjective()
end
function export:f_23_Hacked()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Enable()
end
function export:f_22_Disabled()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:End()
end
function export:f_22_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Disable()
end
function export:f_7_Reached()
  local l0
  self = self._graph
  l0 = self[25]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436203"
  l0:StartCommunication()
end
function export:f_7_Started()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:Enable()
end
function export:en_26()
  local l0
  l0 = self[26]
  l0.Trigger = "9223372052128822067"
  l0.AutoDisable = 1
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.ProgressionLayer = "ProgressionLayers.9223372049270893448"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.ItemDb = "Items.9223372059960720126"
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
