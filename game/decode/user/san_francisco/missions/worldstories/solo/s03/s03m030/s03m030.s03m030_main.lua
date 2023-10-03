export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter_SoundID.lua")
  cbox:RegisterBox("domino/System/LocateGameplayController.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ResearchComponentMonitor.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:LoadResource("soundbinary/4190136920.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4240371191.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/153324964.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3891757117.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.ComponentCovered = {}
  self.GotComponent = 0
  self[3] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = self.f_3_ListStarted
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[25] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[25]
  l0._graph = self
  l0.StartCommunicationOut = self.f_25_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[8] = cbox:CreateBox("domino/System/LocateGameplayController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = self.f_8_Started
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.MessageCompleted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[5] = cbox:CreateBox("domino/System/ResearchComponentMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_5_Disabled
  l0.GotComponent = self.f_5_GotComponent
  l0.ComponentAdded = self.f_5_ComponentAdded
  l0.AmountReached = self.f_5_AmountReached
  l0.AmountNotReached = self.f_5_AmountNotReached
  self[6] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[6]
  l0._graph = self
  self[12] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_12_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[2] = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 3}
  l0.Added = self.f_2_Added
  l0.Removed = self.f_2_Removed
  l0.Out = self.f_2_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_1()
  local l0
  self:en_6()
  l0 = self[6]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[2]
  l0.Input = self.ComponentCovered
  l0.SoundID[0] = "soundbinary/3891757117.bnk"
  l0.SoundID[1] = "soundbinary/153324964.bnk"
  l0.SoundID[2] = "soundbinary/4190136920.bnk"
  l0:Add()
end
function export:f_3_ListStarted()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_25_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_8_Started()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:GetComponent()
end
function export:f_4_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:End()
end
function export:f_5_AmountNotReached()
  local l0
  self = self._graph
  l0 = self[5]
  self.GotComponent = l0.ComponentCount
end
function export:f_5_AmountReached()
  local l0
  self = self._graph
  l0 = self[5]
  self.GotComponent = l0.ComponentCount
  self:en_5()
  l0:Disable()
end
function export:f_5_ComponentAdded()
  local l0
  self = self._graph
  l0 = self[5]
  self.GotComponent = l0.ComponentCount
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  l0 = self[12]
  l0.SoundId = "soundbinary/4240371191.bnk"
  l0:Start()
end
function export:f_5_GotComponent()
  local l0
  self = self._graph
  l0 = self[5]
  self.GotComponent = l0.ComponentCount
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.GotComponent
  l0.B = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_7_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_7_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.TargetEntity = "9223372052992384748"
  l0.DistrictDB = "Districts.9223372048308080000"
  l0.UseStoryIcon = 1
  l0:Start()
end
function export:f_7_A_eq_B()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SoundIdList = self.ComponentCovered
  l0:Start()
end
function export:f_7_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:In()
end
function export:f_12_Finished()
  local l0
  self = self._graph
  l0 = self[25]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421345932"
  l0:StartCommunication()
end
function export:f_2_Added()
  local l0
  self = self._graph
  l0 = self[2]
  self.ComponentCovered = l0.Target
  l0 = self[15]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M030.Objectives.Objective010",
    item = "Objective2",
    id = "634463"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[2]
  self.ComponentCovered = l0.Target
end
function export:f_2_Removed()
  local l0
  self = self._graph
  l0 = self[2]
  self.ComponentCovered = l0.Target
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.ComponentDB = "Items.9223372048406406116"
  l0.AmountToReach = 1
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
