export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Hackable_Tablet_5 = "9223372048624596306"
  self.DebugAnnotationTextEntity_322 = "9223372048624596307"
  self.L12_StoryIcon_2 = "9223372048624732013"
  self.L12M020_CityLifeObject_Prime8_Informant = "9223372052734217263"
  self.L12M020_CityLifeObject_Prime8_Computer = "9223372055295128198"
  self[3] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[3]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[7] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[7]
  l0._graph = self
  self[2] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.MessageCompleted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_4_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_4_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[1]
  l0._graph = self
  l0.NewBeatStarted = self.f_1_NewBeatStarted
  self[8] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[8]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
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
  self[13] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_13_Hacked
  self[6] = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Probability = 3, Output = 3}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_6_Output_0
  l0.Output[1] = self.f_6_Output_1
  l0.Output[2] = self.f_6_Output_2
  self[10] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_10_OnPhoneCallEnded
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
  self:en_7()
  l0 = self[7]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_1()
  l0 = self[1]
  l0:StartNewBeat()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  l0 = self[13]
  l0.CLO = self.L12M020_CityLifeObject_Prime8_Informant
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In()
end
function export:f_4_HackSuccess()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_1_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L12.L12M020.Objectives.Objective010",
    item = "Objective",
    id = "457699"
  }
  l0:ShowNewObjective()
end
function export:f_13_Hacked()
  local l0
  self = self._graph
  l0 = self[10]
  l0.ItemDb = "Items.9223372050357373559"
  l0:Enable()
end
function export:f_6_Output_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373368"
  l0:StartCommunication()
end
function export:f_6_Output_1()
  local l0
  self = self._graph
  l0 = self[8]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373369"
  l0:StartCommunication()
end
function export:f_6_Output_2()
  local l0
  self = self._graph
  l0 = self[3]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373370"
  l0:StartCommunication()
end
function export:f_10_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:End()
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357370926"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.HackableEntity = self.L12M020_CityLifeObject_Prime8_Computer
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.ProgressionLayer = "ProgressionLayers.9223372048624506738"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
