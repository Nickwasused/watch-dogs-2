export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S18M040_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main"
  self.PlayerEntity = nil
  self.LayerMain = "S18M040_Main"
  self.Mission = "MissionList.9223372047730692851"
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M040.Objectives",
    item = "Objective1",
    id = "698593"
  }
  self.box_GrafittiMonitor_11 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_11
  l0._graph = self
  l0._name = "box_GrafittiMonitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|232421329"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_11_Completed
  self.box_MissionController_v4_5 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_5
  l0._graph = self
  l0._name = "box_MissionController_v4_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|241828505"
  self.box_GrafittiMonitor_15 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_15
  l0._graph = self
  l0._name = "box_GrafittiMonitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|302812224"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_15_Completed
  self.box_MissionMessageController_v3_7 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_7
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|910902419"
  l0.Out = self.f_box_MissionMessageController_v3_7_Out
  l0.MessageCompleted = DummyFunction
  self.box_GrafittiMonitor_14 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_14
  l0._graph = self
  l0._name = "box_GrafittiMonitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|931650219"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_14_Completed
  self.box_LayerMonitor_1 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_1
  l0._graph = self
  l0._name = "box_LayerMonitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|947536247"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_1_Loaded
  l0.Unloaded = DummyFunction
  self.box_GrafittiMonitor_13 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_13
  l0._graph = self
  l0._name = "box_GrafittiMonitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1041007552"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_13_Completed
  self.box_Multiple_AND_8 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_8
  l0._graph = self
  l0._name = "box_Multiple_AND_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1193253460"
  l0._DynamicAnchors = {Condition = 5}
  l0.Out = self.f_box_Multiple_AND_8_Out
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1227371810"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_GrafittiMonitor_4 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_4
  l0._graph = self
  l0._name = "box_GrafittiMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1411931513"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_4_Completed
  self.box_ObjectiveMonitor_v2_3 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_3
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1525263397"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_ObjectiveMonitor_v2_3_Disabled
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_3_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1630034832"
  l0.Out = self.f_box_MissionMessageController_v3_10_Out
  l0.MessageCompleted = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = self.box_LayerMonitor_1
  l0.ProgressionLayer = "ProgressionLayers.9223372069250570940"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|226550281", "226550281", "S18M040_Main", "In", "box_LayerMonitor_1.Enable", self, l0)
  l0:Enable()
end
function export:f_box_GrafittiMonitor_11_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_8()
  l0 = self.box_GrafittiMonitor_11
  l1 = self.box_Multiple_AND_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|107816984", "107816984", "S18M040_Main", "box_GrafittiMonitor_11.Completed", "box_Multiple_AND_8.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_GrafittiMonitor_15_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_8()
  l0 = self.box_GrafittiMonitor_15
  l1 = self.box_Multiple_AND_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|783828589", "783828589", "S18M040_Main", "box_GrafittiMonitor_15.Completed", "box_Multiple_AND_8.Condition", l0, l1)
  l1:Condition(4)
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GrafittiMonitor_4
  l0.Interaction = "9223372047200014252"
  l0.Icon = "9223372048401895695"
  l0.ProgressionTag = "ProgressionTag.9223372048440013767"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1107934195", "1107934195", "S18M040_Main", "box_Ordered_Output_6.Out", "box_GrafittiMonitor_4.Enable", clone, l0)
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
  l0 = self.box_GrafittiMonitor_11
  l0.Interaction = "9223372047893176054"
  l0.Icon = "9223372048107791690"
  l0.ProgressionTag = "ProgressionTag.9223372048107665749"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|30409664", "30409664", "S18M040_Main", "box_Ordered_Output_6.Out", "box_GrafittiMonitor_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GrafittiMonitor_14
  l0.Interaction = "9223372047888725709"
  l0.Icon = "9223372048107791269"
  l0.ProgressionTag = "ProgressionTag.9223372048107665753"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|498143979", "498143979", "S18M040_Main", "box_Ordered_Output_6.Out", "box_GrafittiMonitor_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GrafittiMonitor_13
  l0.Interaction = "9223372048107706470"
  l0.Icon = "9223372048107747984"
  l0.ProgressionTag = "ProgressionTag.9223372048107665755"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1951220696", "1951220696", "S18M040_Main", "box_Ordered_Output_6.Out", "box_GrafittiMonitor_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GrafittiMonitor_15
  l0.Interaction = "9223372048107706481"
  l0.Icon = "9223372048401853464"
  l0.ProgressionTag = "ProgressionTag.9223372048107706485"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1076395704", "1076395704", "S18M040_Main", "box_Ordered_Output_6.Out", "box_GrafittiMonitor_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1974846496"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_MissionMessageController_v3_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1291178034", "1291178034", "S18M040_Main", "box_MissionMessageController_v3_7.Out", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_GrafittiMonitor_14_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_8()
  l0 = self.box_GrafittiMonitor_14
  l1 = self.box_Multiple_AND_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|124906346", "124906346", "S18M040_Main", "box_GrafittiMonitor_14.Completed", "box_Multiple_AND_8.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_LayerMonitor_1_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_7
  l0.Objective = self.ObjectiveMain
  l0.IncrementalObjectiveTotal = 5
  l0 = self.box_LayerMonitor_1
  l1 = self.box_MissionMessageController_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|873589996", "873589996", "S18M040_Main", "box_LayerMonitor_1.Loaded", "box_MissionMessageController_v3_7.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_GrafittiMonitor_13_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_8()
  l0 = self.box_GrafittiMonitor_13
  l1 = self.box_Multiple_AND_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1739779028", "1739779028", "S18M040_Main", "box_GrafittiMonitor_13.Completed", "box_Multiple_AND_8.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_Multiple_AND_8_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_Multiple_AND_8
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|99715530", "99715530", "S18M040_Main", "box_Multiple_AND_8.Out", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ObjectiveMonitor_v2_3()
  l0 = self.box_MultipleOR_9
  l1 = self.box_ObjectiveMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|2101483159", "2101483159", "S18M040_Main", "box_MultipleOR_9.Out", "box_ObjectiveMonitor_v2_3.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_GrafittiMonitor_4_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_8()
  l0 = self.box_GrafittiMonitor_4
  l1 = self.box_Multiple_AND_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1674111388", "1674111388", "S18M040_Main", "box_GrafittiMonitor_4.Completed", "box_Multiple_AND_8.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_ObjectiveMonitor_v2_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ObjectiveMonitor_v2_3
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|296877607", "296877607", "S18M040_Main", "box_ObjectiveMonitor_v2_3.Disabled", "box_MissionMessageController_v3_10.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_ObjectiveMonitor_v2_3_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_ObjectiveMonitor_v2_3
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1997899738", "1997899738", "S18M040_Main", "box_ObjectiveMonitor_v2_3.ObjectiveCompleted", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_10
  l1 = self.box_MissionController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1073899103", "1073899103", "S18M040_Main", "box_MissionMessageController_v3_10.Out", "box_MissionController_v4_5.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ObjectiveMonitor_v2_3()
  l0 = self.box_ObjectiveMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1202102743", "1202102743", "S18M040_Main", "box_Ordered_Output_2.Out", "box_ObjectiveMonitor_v2_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|510334687"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_6_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_6_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_6_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040.domino|@S18M040_Main|1021767005", "1021767005", "S18M040_Main", "box_Ordered_Output_2.Out", "box_Ordered_Output_6.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_Multiple_AND_8()
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_ObjectiveMonitor_v2_3()
  local l0
  l0 = self.box_ObjectiveMonitor_v2_3
  l0.Objective = self.ObjectiveMain
end
_compilerVersion = 4
