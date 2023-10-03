export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/playerphonecommunicationmonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[12] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.MessageCompleted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_2_OnPhoneCallEnded
  self[9] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[9]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_1_OnPhoneCallEnded
  self[7] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[15] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_15_Hacked
  self[14] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[14]
  l0._graph = self
  self[16] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_16_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[18] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
  self[13] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
  self[23] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[23]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[6] = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_6_OnCommunicationFinished
  self[11] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[11]
  l0._graph = self
  l0.NewBeatStarted = self.f_11_NewBeatStarted
  self[17] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[4] = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_4_OnCommunicationFinished
  self[21] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_21_Hacked
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
  l0 = self[18]
  l0:Input(1)
end
function export:In()
  local l0
  self:en_11()
  l0 = self[11]
  l0:StartNewBeat()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = self[2]
  l0.ItemDb = "Items.9223372050357367128"
  l0:Enable()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357463255"
  l0:Enable()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367116"
  l0:Enable()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_25_Out_0
  l0.Out[1] = self.f_25_Out_1
  l0.Out[2] = self.f_25_Out_2
  l0:In()
end
function export:f_2_OnPhoneCallEnded()
  local l0
  self = self._graph
  l0 = self[9]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367116"
  l0:StartCommunication()
end
function export:f_1_OnPhoneCallEnded()
  local l0
  self = self._graph
  l0 = self[23]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357463255"
  l0:StartCommunication()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  l0 = self[1]
  l0.ItemDb = "Items.9223372056441907550"
  l0:Enable()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(0)
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(0)
end
function export:f_15_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_16_ObjectiveCompleted()
  local l0
  self = self._graph
  l0 = self[17]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Succeed()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M020.Objectives.Objective010",
    item = "Objective",
    id = "457647"
  }
  l0:IncrementObjective()
end
function export:f_6_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_11_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M020.Objectives.Objective010",
    item = "Objective",
    id = "457647"
  }
  l0.IncrementalObjectiveTotal = 2
  l0:ShowNewObjective()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_4_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_25_Out_0()
  local l0
  self = self._graph
  l0 = self[15]
  l0.CLO = "9223372048502957713"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048502957691"
  l0:Start()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  l0 = self[21]
  l0.CLO = "9223372048502957712"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048502957692"
  l0:Start()
end
function export:f_25_Out_2()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M020.Objectives.Objective010",
    item = "Objective",
    id = "457647"
  }
  l0:Enable()
end
function export:f_21_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.ProgressionLayer = "ProgressionLayers.9223372048502957725"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
