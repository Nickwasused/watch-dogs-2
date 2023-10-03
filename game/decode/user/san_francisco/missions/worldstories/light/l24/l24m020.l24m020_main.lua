export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_1_Hacked
  self[2] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.MessageCompleted = DummyFunction
  self[8] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[8]
  l0._graph = self
  l0.NewBeatStarted = self.f_8_NewBeatStarted
  self[7] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[7]
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
  self:en_8()
  l0 = self[8]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_7()
  l0 = self[7]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_8()
  l0 = self[8]
  l0:StartNewBeat()
end
function export:f_1_Hacked()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:End()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CLO = "9223372055178019528"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_8_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M020.Objectives.Objective010",
    item = "Objective",
    id = "550049"
  }
  l0:ShowNewObjective()
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.ProgressionLayer = "ProgressionLayers.9223372052771457739"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367697"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
