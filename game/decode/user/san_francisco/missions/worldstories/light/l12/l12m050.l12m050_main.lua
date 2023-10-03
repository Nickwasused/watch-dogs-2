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
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Hackable_Tablet_9 = "9223372048740284432"
  self.L12M050_DebugAnnotationTextEntity_326 = "9223372048740284430"
  self.L12_StoryIcon_5 = "9223372048740284428"
  self.L12M050_CityLifeObject_AudioLog = "9223372055528406695"
  self.L12M050_ProximityTrigger_DeadBody_TS = "9223372055528485138"
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_1_Hacked
  self[2] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[2]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_2_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[18] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[18]
  l0._graph = self
  self[5] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_5_OnPhoneCallEnded
  self[4] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_4_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[17] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[17]
  l0._graph = self
  l0.NewBeatStarted = self.f_17_NewBeatStarted
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
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
  self:en_17()
  l0 = self[17]
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
  self:en_17()
  l0 = self[17]
  l0:StartNewBeat()
end
function export:f_1_Hacked()
  local l0
  self = self._graph
  l0 = self[5]
  l0.ItemDb = "Items.9223372059111819659"
  l0:Enable()
end
function export:f_2_OnCommunicationStarted()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_5_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:End()
end
function export:f_4_Enter()
  local l0
  self = self._graph
  l0 = self[2]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370927"
  l0:TryStartCommunication()
end
function export:f_17_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L12.L12M050.Objectives.Objective010",
    item = "Objective",
    id = "603658"
  }
  l0:ShowNewObjective()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CLO = self.L12M050_CityLifeObject_AudioLog
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Trigger = self.L12M050_ProximityTrigger_DeadBody_TS
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.ProgressionLayer = "ProgressionLayers.9223372048624506741"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
