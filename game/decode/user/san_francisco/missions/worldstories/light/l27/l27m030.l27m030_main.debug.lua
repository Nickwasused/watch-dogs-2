export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Neutralize_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L27M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main"
  self.PlayerEntity = nil
  self.FlatScreen_TV_BreakableDynamicMediaObject_L26M030 = "9223372049956831260"
  self.L27_StoryIcon_1 = "9223372049956831245"
  self.DO_NOT_USE_DGO_CARGO_Pallet_0 = "9223372049956831243"
  self.Explosive_palette_HackableBreakableEntity_61 = "9223372049956883134"
  self.Explosive_Pallet_BreakableObject_37 = "9223372049956883781"
  self.Laptop_HackableEntity_6 = "9223372050041487365"
  self.box_FreeRoam_Neutralize_Gameplay_12 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Neutralize_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Neutralize_Gameplay_12
  l0._graph = self
  l0._name = "box_FreeRoam_Neutralize_Gameplay_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|149613779"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_FreeRoam_Neutralize_Gameplay_12_Neutralized
  self.box_MissionMessageController_v3_16 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_16
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|423597773"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_4 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_4
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|437444117"
  l0.Out = self.f_box_MissionMessageController_v3_4_Out
  l0.MessageCompleted = DummyFunction
  self.box_ObjectiveMonitor_v2_17 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_17
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|511128200"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_17_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_FreeRoam_Neutralize_Gameplay_14 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Neutralize_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Neutralize_Gameplay_14
  l0._graph = self
  l0._name = "box_FreeRoam_Neutralize_Gameplay_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|547433878"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_FreeRoam_Neutralize_Gameplay_14_Neutralized
  self.box_PhoneCommunicationController_9 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_9
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|553609114"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_9_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Neutralize_Gameplay_7 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Neutralize_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Neutralize_Gameplay_7
  l0._graph = self
  l0._name = "box_FreeRoam_Neutralize_Gameplay_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|554913360"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_FreeRoam_Neutralize_Gameplay_7_Neutralized
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|764568727"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|843065736"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_FreeRoam_Mission_End_18 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_18
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1152810800"
  self.box_Player_Proximity_Monitor_8 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_8
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1567277148"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_8_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_FreeRoam_Neutralize_Gameplay_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Neutralize_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Neutralize_Gameplay_2
  l0._graph = self
  l0._name = "box_FreeRoam_Neutralize_Gameplay_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|2106415090"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_FreeRoam_Neutralize_Gameplay_2_Neutralized
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
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|674186266", "674186266", "L27M030_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_18()
  l0 = self.box_FreeRoam_Mission_End_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|796882026", "796882026", "L27M030_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_18.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|7905827", "7905827", "L27M030_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Neutralize_Gameplay_12_Neutralized()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_FreeRoam_Neutralize_Gameplay_12
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1004307952", "1004307952", "L27M030_Main", "box_FreeRoam_Neutralize_Gameplay_12.Neutralized", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_MissionMessageController_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1108155372"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_10_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_10_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_10_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_10_Out_5
  l0 = self.box_MissionMessageController_v3_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1215584481", "1215584481", "L27M030_Main", "box_MissionMessageController_v3_4.Out", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_ObjectiveMonitor_v2_17_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_18()
  l0 = self.box_ObjectiveMonitor_v2_17
  l1 = self.box_FreeRoam_Mission_End_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1101792145", "1101792145", "L27M030_Main", "box_ObjectiveMonitor_v2_17.ObjectiveCompleted", "box_FreeRoam_Mission_End_18.End", l0, l1)
  l1:End()
end
function export:f_box_FreeRoam_Neutralize_Gameplay_14_Neutralized()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_FreeRoam_Neutralize_Gameplay_14
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1234125304", "1234125304", "L27M030_Main", "box_FreeRoam_Neutralize_Gameplay_14.Neutralized", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_PhoneCommunicationController_9_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_8()
  l0 = self.box_PhoneCommunicationController_9
  l1 = self.box_Player_Proximity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|785743478", "785743478", "L27M030_Main", "box_PhoneCommunicationController_9.OnCommunicationStarted", "box_Player_Proximity_Monitor_8.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_FreeRoam_Neutralize_Gameplay_7_Neutralized()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_FreeRoam_Neutralize_Gameplay_7
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|849365679", "849365679", "L27M030_Main", "box_FreeRoam_Neutralize_Gameplay_7.Neutralized", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_4
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M030.Objectives.Objective010",
    item = "Objective",
    id = "550098"
  }
  l0.IncrementalObjectiveTotal = 4
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|754035772", "754035772", "L27M030_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_4.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_16
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M030.Objectives.Objective010",
    item = "Objective",
    id = "550098"
  }
  l0 = self.box_MultipleOR_15
  l1 = self.box_MissionMessageController_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|96412064", "96412064", "L27M030_Main", "box_MultipleOR_15.Out", "box_MissionMessageController_v3_16.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_8()
  l0 = self.box_Player_Proximity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1301459806", "1301459806", "L27M030_Main", "box_Ordered_Output_10.Out", "box_Player_Proximity_Monitor_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Neutralize_Gameplay_2
  l0.CLO = "9223372059806229509"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.ProgressionTag = "ProgressionTag.9223372059806230135"
  l0.ProgressionTagItem = "Items.9223372059806230132"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1336512751", "1336512751", "L27M030_Main", "box_Ordered_Output_10.Out", "box_FreeRoam_Neutralize_Gameplay_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_10_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Neutralize_Gameplay_7
  l0.CLO = "9223372059806230138"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.ProgressionTag = "ProgressionTag.9223372059806230136"
  l0.ProgressionTagItem = "Items.9223372059806230133"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1730430240", "1730430240", "L27M030_Main", "box_Ordered_Output_10.Out", "box_FreeRoam_Neutralize_Gameplay_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_10_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Neutralize_Gameplay_12
  l0.CLO = "9223372059806230139"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.ProgressionTag = "ProgressionTag.9223372059806230137"
  l0.ProgressionTagItem = "Items.9223372059806230134"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1009538843", "1009538843", "L27M030_Main", "box_Ordered_Output_10.Out", "box_FreeRoam_Neutralize_Gameplay_12.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_10_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Neutralize_Gameplay_14
  l0.CLO = "9223372059806230451"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.ProgressionTag = "ProgressionTag.9223372059806230450"
  l0.ProgressionTagItem = "Items.9223372059806230449"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|2063704091", "2063704091", "L27M030_Main", "box_Ordered_Output_10.Out", "box_FreeRoam_Neutralize_Gameplay_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_10_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ObjectiveMonitor_v2_17
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M030.Objectives.Objective010",
    item = "Objective",
    id = "550098"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|819213078", "819213078", "L27M030_Main", "box_Ordered_Output_10.Out", "box_ObjectiveMonitor_v2_17.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Player_Proximity_Monitor_8_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_9
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367123"
  l0 = self.box_Player_Proximity_Monitor_8
  l1 = self.box_PhoneCommunicationController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1676817267", "1676817267", "L27M030_Main", "box_Player_Proximity_Monitor_8.EnterRadius", "box_PhoneCommunicationController_9.TryStartCommunication", l0, l1)
  l1:TryStartCommunication()
end
function export:f_box_FreeRoam_Neutralize_Gameplay_2_Neutralized()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_FreeRoam_Neutralize_Gameplay_2
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M030.domino|@L27M030_Main|1975231247", "1975231247", "L27M030_Main", "box_FreeRoam_Neutralize_Gameplay_2.Neutralized", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(0)
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372049270893459"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_FreeRoam_Mission_End_18()
  local l0
  l0 = self.box_FreeRoam_Mission_End_18
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367124"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_Player_Proximity_Monitor_8()
  local l0
  l0 = self.box_Player_Proximity_Monitor_8
  l0.TargetEntity = "9223372063193718819"
  l0.Radius = 55
end
_compilerVersion = 4
