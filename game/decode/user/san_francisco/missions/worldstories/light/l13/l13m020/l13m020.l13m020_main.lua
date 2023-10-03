export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = "100"
  self[7] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_7_Interacted
  self[19] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[19]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_1_MessageCompleted
  self[3] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_3_EnterRadius
  l0.ExitRadius = DummyFunction
  self[10] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_10_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[2]
  l0._graph = self
  self[14] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[14]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_14_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_4_Interacted
  self[18] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
  self[8] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_8_HasNOT
  self[5] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[5]
  l0._graph = self
  l0.NewBeatStarted = self.f_5_NewBeatStarted
  self[9] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_9_RewardsExecuted
  self[11] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
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
  self:en_5()
  l0 = self[5]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_2()
  l0 = self[2]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_5()
  l0 = self[5]
  l0:StartNewBeat()
end
function export:f_7_Interacted()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(0)
end
function export:f_1_MessageCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0.Out[2] = self.f_6_Out_2
  l0.Out[3] = self.f_6_Out_3
  l0:In()
end
function export:f_3_EnterRadius()
  local l0
  self = self._graph
  l0 = self[14]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357369880"
  l0:TryStartCommunication()
end
function export:f_10_ObjectiveCompleted()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:End()
end
function export:f_14_OnCommunicationStarted()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_4_Interacted()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(1)
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M020.Objectives.Objective010",
    item = "Objective",
    id = "457712"
  }
  l0:IncrementObjective()
end
function export:f_8_HasNOT()
  local l0
  self = self._graph
  l0 = self[9]
  l0.ItemDB = "Items.9223372068922211575"
  l0:ExecuteRewards()
end
function export:f_5_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[5]
  self.PlayerEntity = l0.PlayerEntity
  l0 = self[1]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M020.Objectives.Objective010",
    item = "Objective",
    id = "457712"
  }
  l0.IncrementalObjectiveTotal = 2
  l0:ShowNewObjective()
end
function export:f_9_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[19]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373737"
  l0:StartCommunication()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0.CLO = "9223372060810722563"
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372052852859067"
  l0:Start()
end
function export:f_6_Out_2()
  local l0
  self = self._graph
  l0 = self[4]
  l0.CLO = "9223372060810722564"
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372068922211571"
  l0:Start()
end
function export:f_6_Out_3()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M020.Objectives.Objective010",
    item = "Objective",
    id = "457712"
  }
  l0:Enable()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.ProgressionTag = "ProgressionTag.9223372068922211576"
  l0:HasProgressionTag()
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372061410602600"
  l0.Radius = 40
  l0.CheckDistance3D = 1
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357369881"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 1
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.ProgressionLayer = "ProgressionLayers.9223372052852859056"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
