export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L08M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main"
  self.PlayerEntity = nil
  self.Player = "0"
  self.box_FreeRoam_Hack_Gameplay_10 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_10
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|334782447"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_10_Hacked
  self.box_TriggerMonitor_v2_13 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_13
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|358023125"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_13_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|403746953"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Beat_11 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_11
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|1033242595"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_11_NewBeatStarted
  self.box_FreeRoam_Mission_End_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_3
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|1674884002"
  self.box_PhoneCommunicationController_12 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_12
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|2014862559"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_12_OnCommunicationStarted
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
  self:OnEnter_box_FreeRoam_Beat_11()
  l0 = self.box_FreeRoam_Beat_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|1631559629", "1631559629", "L08M030_Main", "CheckPoint_0", "box_FreeRoam_Beat_11.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|2100849968", "2100849968", "L08M030_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_3.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_11()
  l0 = self.box_FreeRoam_Beat_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|767926805", "767926805", "L08M030_Main", "In", "box_FreeRoam_Beat_11.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Hack_Gameplay_10_Hacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_FreeRoam_Hack_Gameplay_10
  l1 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|274110364", "274110364", "L08M030_Main", "box_FreeRoam_Hack_Gameplay_10.Hacked", "box_FreeRoam_Mission_End_3.End", l0, l1)
  l1:End()
end
function export:f_box_TriggerMonitor_v2_13_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_12
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367119"
  l0 = self.box_TriggerMonitor_v2_13
  l1 = self.box_PhoneCommunicationController_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|37931448", "37931448", "L08M030_Main", "box_TriggerMonitor_v2_13.Enter", "box_PhoneCommunicationController_12.TryStartCommunication", l0, l1)
  l1:TryStartCommunication()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|1176527103"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_MissionMessageController_v3_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|1906437251", "1906437251", "L08M030_Main", "box_MissionMessageController_v3_1.Out", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Beat_11_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_11
  self.PlayerEntity = l0.PlayerEntity
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M030.Objectives.Objective010",
    item = "Objective",
    id = "457651"
  }
  l0 = self.box_FreeRoam_Beat_11
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|1641365618", "1641365618", "L08M030_Main", "box_FreeRoam_Beat_11.NewBeatStarted", "box_MissionMessageController_v3_1.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Hack_Gameplay_10
  l0.CLO = "9223372048502957714"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|1411980780", "1411980780", "L08M030_Main", "box_Ordered_Output_2.Out", "box_FreeRoam_Hack_Gameplay_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|1351894551", "1351894551", "L08M030_Main", "box_Ordered_Output_2.Out", "box_TriggerMonitor_v2_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PhoneCommunicationController_12_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_PhoneCommunicationController_12
  l1 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M030\\L08M030.domino|@L08M030_Main|1515168907", "1515168907", "L08M030_Main", "box_PhoneCommunicationController_12.OnCommunicationStarted", "box_TriggerMonitor_v2_13.Disable", l0, l1)
  l1:Disable()
end
function export:OnEnter_box_TriggerMonitor_v2_13()
  local l0
  l0 = self.box_TriggerMonitor_v2_13
  l0.Trigger = "9223372053936998220"
end
function export:OnEnter_box_FreeRoam_Beat_11()
  local l0
  l0 = self.box_FreeRoam_Beat_11
  l0.ProgressionLayer = "ProgressionLayers.9223372048502957726"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Mission_End_3()
  local l0
  l0 = self.box_FreeRoam_Mission_End_3
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367118"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
