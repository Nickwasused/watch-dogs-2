export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/PickupMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S20.S20M050.Objectives.Objective010",
    item = "Objective",
    id = "492952"
  }
  self[2] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.MessageCompleted = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[1]
  l0._graph = self
  self[3] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[3]
  l0._graph = self
  l0.NewBeatStarted = self.f_3_NewBeatStarted
  self[5] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[5]
  l0._graph = self
  l0.Shown = self.f_5_Shown
  l0.Hidden = self.f_5_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[4] = cbox:CreateBox("domino/System/PickupMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_4_Disabled
  l0.PickedUp = self.f_4_PickedUp
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
  self:en_1()
  l0 = self[1]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_3()
  l0 = self[3]
  l0:StartNewBeat()
end
function export:f_2_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Show()
end
function export:f_3_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Objective = self.ObjectiveMain
  l0:ShowNewObjective()
end
function export:f_5_Hidden()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_5_Shown()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:End()
end
function export:f_4_PickedUp()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Hide()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.ProgressionLayer = "ProgressionLayers.9223372048282633687"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.MapPoint = "9223372073484571639"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Pickup = "9223372073488556930"
end
_compilerVersion = 4
