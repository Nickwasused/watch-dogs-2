export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.L36M010_Target_NPC = "9223372050352061733"
  self.L36M010_Mission_Area = "9223372050352118362"
  self[6] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.OnPhoneCallEnded = self.f_3_OnPhoneCallEnded
  self[2] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_2_Hacked
  self[4] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[4]
  l0._graph = self
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[1]
  l0._graph = self
  l0.NewBeatStarted = self.f_1_NewBeatStarted
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
  self:en_4()
  l0 = self[4]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_1()
  l0 = self[1]
  l0:StartNewBeat()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.CLO = self.L36M010_Target_NPC
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:End()
end
function export:f_3_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_2_Hacked()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_1_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L36.L36M010.Objectives.Objective010",
    item = "Objective",
    id = "552693"
  }
  l0:ShowNewObjective()
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.ItemDb = "Items.9223372059404075835"
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050495846438"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.ProgressionLayer = "ProgressionLayers.9223372049593485562"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
