export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S20.S20M090.Objectives.Objective010",
    item = "Objective",
    id = "493336"
  }
  self[2] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_2_Interacted
  self[6] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.MessageCompleted = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.MessageCompleted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_4_Loaded
  l0.Unloaded = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[3]
  l0._graph = self
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = self[4]
  l0.ProgressionLayer = "ProgressionLayers.9223372048282633691"
  l0:Enable()
end
function export:f_2_Interacted()
  local l0
  self = self._graph
  l0 = self[1]
  l0:ShowMissionComplete()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.CLO = "9223372060991251380"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048282633699"
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Succeed()
end
function export:f_4_Loaded()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Objective = self.ObjectiveMain
  l0:ShowNewObjective()
end
_compilerVersion = 4
