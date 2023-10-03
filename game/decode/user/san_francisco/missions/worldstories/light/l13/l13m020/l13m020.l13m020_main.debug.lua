export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
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
  self._name = "L13M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main"
  self.PlayerEntity = "100"
  self.box_FreeRoam_Interact_Gameplay_7 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Interact_Gameplay_7
  l0._graph = self
  l0._name = "box_FreeRoam_Interact_Gameplay_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|190099585"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_Interact_Gameplay_7_Interacted
  self.box_PhoneCommunicationController_19 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_19
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|220289156"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|296091290"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_1_MessageCompleted
  self.box_Proximity_Monitor_3 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_3
  l0._graph = self
  l0._name = "box_Proximity_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|364355869"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_3_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_ObjectiveMonitor_v2_10 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_10
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|453633312"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_10_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_FreeRoam_Mission_End_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_2
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|498810052"
  self.box_PhoneCommunicationController_14 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_14
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|852500820"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_14_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Interact_Gameplay_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Interact_Gameplay_4
  l0._graph = self
  l0._name = "box_FreeRoam_Interact_Gameplay_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|874957074"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_Interact_Gameplay_4_Interacted
  self.box_MultipleOR_18 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1251114674"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_Progression_Tag_Monitor_8 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_8
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1317509659"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_8_HasNOT
  self.box_FreeRoam_Beat_5 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_5
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1499709748"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_5_NewBeatStarted
  self.box_RewardController_v3_9 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_9
  l0._graph = self
  l0._name = "box_RewardController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|2070730537"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_9_RewardsExecuted
  self.box_MissionMessageController_v3_11 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_11
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|2096307971"
  l0.Out = self.f_box_MissionMessageController_v3_11_Out
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
  self:OnEnter_box_FreeRoam_Beat_5()
  l0 = self.box_FreeRoam_Beat_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1074273932", "1074273932", "L13M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_5.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1774075215", "1774075215", "L13M020_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_5()
  l0 = self.box_FreeRoam_Beat_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1310150575", "1310150575", "L13M020_Main", "In", "box_FreeRoam_Beat_5.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Interact_Gameplay_7_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_FreeRoam_Interact_Gameplay_7
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1200393719", "1200393719", "L13M020_Main", "box_FreeRoam_Interact_Gameplay_7.Interacted", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_1_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|2086129882"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_6_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_6_Out_3
  l0 = self.box_MissionMessageController_v3_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1911487699", "1911487699", "L13M020_Main", "box_MissionMessageController_v3_1.MessageCompleted", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_3_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_14
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357369880"
  l0 = self.box_Proximity_Monitor_3
  l1 = self.box_PhoneCommunicationController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|58313053", "58313053", "L13M020_Main", "box_Proximity_Monitor_3.EnterRadius", "box_PhoneCommunicationController_14.TryStartCommunication", l0, l1)
  l1:TryStartCommunication()
end
function export:f_box_ObjectiveMonitor_v2_10_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_ObjectiveMonitor_v2_10
  l1 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|891109102", "891109102", "L13M020_Main", "box_ObjectiveMonitor_v2_10.ObjectiveCompleted", "box_FreeRoam_Mission_End_2.End", l0, l1)
  l1:End()
end
function export:f_box_PhoneCommunicationController_14_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_3()
  l0 = self.box_PhoneCommunicationController_14
  l1 = self.box_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1603334658", "1603334658", "L13M020_Main", "box_PhoneCommunicationController_14.OnCommunicationStarted", "box_Proximity_Monitor_3.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_FreeRoam_Interact_Gameplay_4_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_FreeRoam_Interact_Gameplay_4
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1591977014", "1591977014", "L13M020_Main", "box_FreeRoam_Interact_Gameplay_4.Interacted", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_11
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M020.Objectives.Objective010",
    item = "Objective",
    id = "457712"
  }
  l0 = self.box_MultipleOR_18
  l1 = self.box_MissionMessageController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|946735810", "946735810", "L13M020_Main", "box_MultipleOR_18.Out", "box_MissionMessageController_v3_11.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Progression_Tag_Monitor_8_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_9
  l0.ItemDB = "Items.9223372068922211575"
  l0 = self.box_Progression_Tag_Monitor_8
  l1 = self.box_RewardController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1577223148", "1577223148", "L13M020_Main", "box_Progression_Tag_Monitor_8.HasNOT", "box_RewardController_v3_9.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_FreeRoam_Beat_5_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_5
  self.PlayerEntity = l0.PlayerEntity
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M020.Objectives.Objective010",
    item = "Objective",
    id = "457712"
  }
  l0.IncrementalObjectiveTotal = 2
  l0 = self.box_FreeRoam_Beat_5
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1144573606", "1144573606", "L13M020_Main", "box_FreeRoam_Beat_5.NewBeatStarted", "box_MissionMessageController_v3_1.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_RewardController_v3_9_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_19
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373737"
  l0 = self.box_RewardController_v3_9
  l1 = self.box_PhoneCommunicationController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1386826210", "1386826210", "L13M020_Main", "box_RewardController_v3_9.RewardsExecuted", "box_PhoneCommunicationController_19.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_3()
  l0 = self.box_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1749265582", "1749265582", "L13M020_Main", "box_Ordered_Output_6.Out", "box_Proximity_Monitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Interact_Gameplay_7
  l0.CLO = "9223372060810722563"
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372052852859067"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1190407391", "1190407391", "L13M020_Main", "box_Ordered_Output_6.Out", "box_FreeRoam_Interact_Gameplay_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_6_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Interact_Gameplay_4
  l0.CLO = "9223372060810722564"
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372068922211571"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1805993046", "1805993046", "L13M020_Main", "box_Ordered_Output_6.Out", "box_FreeRoam_Interact_Gameplay_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_6_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ObjectiveMonitor_v2_10
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L13.L13M020.Objectives.Objective010",
    item = "Objective",
    id = "457712"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|1154831080", "1154831080", "L13M020_Main", "box_Ordered_Output_6.Out", "box_ObjectiveMonitor_v2_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_8
  l0.ProgressionTag = "ProgressionTag.9223372068922211576"
  l0 = self.box_MissionMessageController_v3_11
  l1 = self.box_Progression_Tag_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M020\\L13M020.domino|@L13M020_Main|924066322", "924066322", "L13M020_Main", "box_MissionMessageController_v3_11.Out", "box_Progression_Tag_Monitor_8.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:OnEnter_box_Proximity_Monitor_3()
  local l0
  l0 = self.box_Proximity_Monitor_3
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372061410602600"
  l0.Radius = 40
  l0.CheckDistance3D = 1
end
function export:OnEnter_box_FreeRoam_Mission_End_2()
  local l0
  l0 = self.box_FreeRoam_Mission_End_2
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357369881"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 1
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_FreeRoam_Beat_5()
  local l0
  l0 = self.box_FreeRoam_Beat_5
  l0.ProgressionLayer = "ProgressionLayers.9223372052852859056"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
