export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Neutralize_Gameplay.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.FlatScreen_TV_BreakableDynamicMediaObject_L26M030 = "9223372049956831260"
  self.L27_StoryIcon_1 = "9223372049956831245"
  self.DO_NOT_USE_DGO_CARGO_Pallet_0 = "9223372049956831243"
  self.Explosive_palette_HackableBreakableEntity_61 = "9223372049956883134"
  self.Explosive_Pallet_BreakableObject_37 = "9223372049956883781"
  self.Laptop_HackableEntity_6 = "9223372050041487365"
  self[12] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Neutralize_Gameplay.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_12_Neutralized
  self[16] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.MessageCompleted = DummyFunction
  self[17] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_17_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Neutralize_Gameplay.lua")
  l0 = self[14]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_14_Neutralized
  self[9] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[9]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_9_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[7] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Neutralize_Gameplay.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_7_Neutralized
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[1]
  l0._graph = self
  l0.NewBeatStarted = self.f_1_NewBeatStarted
  self[15] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_15_Out
  self[18] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[18]
  l0._graph = self
  self[8] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_8_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Neutralize_Gameplay.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_2_Neutralized
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
  self:en_18()
  l0 = self[18]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_1()
  l0 = self[1]
  l0:StartNewBeat()
end
function export:f_12_Neutralized()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(2)
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0.Out[2] = self.f_10_Out_2
  l0.Out[3] = self.f_10_Out_3
  l0.Out[4] = self.f_10_Out_4
  l0.Out[5] = self.f_10_Out_5
  l0:In()
end
function export:f_17_ObjectiveCompleted()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:End()
end
function export:f_14_Neutralized()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(3)
end
function export:f_9_OnCommunicationStarted()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_7_Neutralized()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_1_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M030.Objectives.Objective010",
    item = "Objective",
    id = "550098"
  }
  l0.IncrementalObjectiveTotal = 4
  l0:ShowNewObjective()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M030.Objectives.Objective010",
    item = "Objective",
    id = "550098"
  }
  l0:IncrementObjective()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = self[2]
  l0.CLO = "9223372059806229509"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.ProgressionTag = "ProgressionTag.9223372059806230135"
  l0.ProgressionTagItem = "Items.9223372059806230132"
  l0:Start()
end
function export:f_10_Out_2()
  local l0
  self = self._graph
  l0 = self[7]
  l0.CLO = "9223372059806230138"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.ProgressionTag = "ProgressionTag.9223372059806230136"
  l0.ProgressionTagItem = "Items.9223372059806230133"
  l0:Start()
end
function export:f_10_Out_3()
  local l0
  self = self._graph
  l0 = self[12]
  l0.CLO = "9223372059806230139"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.ProgressionTag = "ProgressionTag.9223372059806230137"
  l0.ProgressionTagItem = "Items.9223372059806230134"
  l0:Start()
end
function export:f_10_Out_4()
  local l0
  self = self._graph
  l0 = self[14]
  l0.CLO = "9223372059806230451"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.ProgressionTag = "ProgressionTag.9223372059806230450"
  l0.ProgressionTagItem = "Items.9223372059806230449"
  l0:Start()
end
function export:f_10_Out_5()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M030.Objectives.Objective010",
    item = "Objective",
    id = "550098"
  }
  l0:Enable()
end
function export:f_8_EnterRadius()
  local l0
  self = self._graph
  l0 = self[9]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367123"
  l0:TryStartCommunication()
end
function export:f_2_Neutralized()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.ProgressionLayer = "ProgressionLayers.9223372049270893459"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367124"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.TargetEntity = "9223372063193718819"
  l0.Radius = 55
end
_compilerVersion = 4
