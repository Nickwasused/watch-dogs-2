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
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[4] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_4_Located
  self[3] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[3]
  l0._graph = self
  l0.NewBeatStarted = self.f_3_NewBeatStarted
  self[9] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.MessageCompleted = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[6]
  l0._graph = self
  l0.NewBeatStarted = self.f_6_NewBeatStarted
  self[8] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[8]
  l0._graph = self
  self[2] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[2]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_2_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_1_Hacked
  self[5] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_5_Disabled
  l0.OnPhoneCallEnded = self.f_5_OnPhoneCallEnded
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
  self:en_3()
  l0 = self[3]
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
  self:en_8()
  l0 = self[8]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_3()
  l0 = self[3]
  l0:StartNewBeat()
end
function export:f_4_Located()
  local l0
  self = self._graph
  l0 = self[2]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367270"
  l0:StartCommunication()
end
function export:f_3_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L01M020.Objectives.Objective010",
    item = "Objective",
    id = "397659"
  }
  l0:ShowNewObjective()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CLO = "9223372049416583330"
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
  l0 = self[4]
  l0.CLO = "9223372049416583330"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.DistrictsDB = "Districts.9223372048308079989"
  l0:Start()
end
function export:f_6_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L01M020A.Objectives.Objective010",
    item = "Objective",
    id = "637056"
  }
  l0:ShowNewObjective()
end
function export:f_2_OnCommunicationFinished()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:StartNewBeat()
end
function export:f_1_Hacked()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:End()
end
function export:f_5_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.ProgressionLayer = "ProgressionLayers.9223372047103152428"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.ProgressionLayer = "ProgressionLayers.9223372047103152428"
  l0.Checkpoint = "CheckPoint_1"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372049814637222"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.ItemDb = "Items.9223372050160469618"
end
_compilerVersion = 4
