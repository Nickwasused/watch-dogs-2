export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Player = "0"
  self[10] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_10_Hacked
  self[13] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_13_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.MessageCompleted = DummyFunction
  self[11] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[11]
  l0._graph = self
  l0.NewBeatStarted = self.f_11_NewBeatStarted
  self[3] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[3]
  l0._graph = self
  self[12] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[12]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_12_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
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
  self:en_11()
  l0 = self[11]
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
  self:en_11()
  l0 = self[11]
  l0:StartNewBeat()
end
function export:f_10_Hacked()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:End()
end
function export:f_13_Enter()
  local l0
  self = self._graph
  l0 = self[12]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367119"
  l0:TryStartCommunication()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_11_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[11]
  self.PlayerEntity = l0.PlayerEntity
  l0 = self[1]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M030.Objectives.Objective010",
    item = "Objective",
    id = "457651"
  }
  l0:ShowNewObjective()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0.CLO = "9223372048502957714"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_12_OnCommunicationStarted()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.Trigger = "9223372053936998220"
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.ProgressionLayer = "ProgressionLayers.9223372048502957726"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367118"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
