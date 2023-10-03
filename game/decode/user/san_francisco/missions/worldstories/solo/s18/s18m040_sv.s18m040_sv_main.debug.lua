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
  self._name = "S18M040_SV_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main"
  self.PlayerEntity = nil
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives",
    item = "Objective2",
    id = "697848"
  }
  self.box_MissionController_v4_10 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_10
  l0._graph = self
  l0._name = "box_MissionController_v4_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|36317210"
  self.box_GrafittiMonitor_11 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_11
  l0._graph = self
  l0._name = "box_GrafittiMonitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|609124185"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_11_Completed
  self.box_GrafittiMonitor_1 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_1
  l0._graph = self
  l0._name = "box_GrafittiMonitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|709522972"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_1_Completed
  self.box_GrafittiMonitor_4 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_4
  l0._graph = self
  l0._name = "box_GrafittiMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|878985636"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_4_Completed
  self.box_ObjectiveMonitor_v2_6 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_6
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1280864540"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_ObjectiveMonitor_v2_6_Disabled
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_6_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1426239416"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_LayerMonitor_7 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_7
  l0._graph = self
  l0._name = "box_LayerMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1457882803"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_7_Loaded
  l0.Unloaded = DummyFunction
  self.box_MissionMessageController_v3_9 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_9
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1623187009"
  l0.Out = self.f_box_MissionMessageController_v3_9_Out
  l0.MessageCompleted = DummyFunction
  self.box_GrafittiMonitor_8 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_8
  l0._graph = self
  l0._name = "box_GrafittiMonitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1749727508"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_8_Completed
  self.box_Multiple_AND_12 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_12
  l0._graph = self
  l0._name = "box_Multiple_AND_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1777550458"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_12_Out
  self.box_MultipleOR_13 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1822736289"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
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
  l0 = self.box_LayerMonitor_7
  l0.ProgressionLayer = "ProgressionLayers.9223372069299939034"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1602293966", "1602293966", "S18M040_SV_Main", "In", "box_LayerMonitor_7.Enable", self, l0)
  l0:Enable()
end
function export:f_box_GrafittiMonitor_11_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_12()
  l0 = self.box_GrafittiMonitor_11
  l1 = self.box_Multiple_AND_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1142541247", "1142541247", "S18M040_SV_Main", "box_GrafittiMonitor_11.Completed", "box_Multiple_AND_12.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_GrafittiMonitor_1_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_12()
  l0 = self.box_GrafittiMonitor_1
  l1 = self.box_Multiple_AND_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|397469555", "397469555", "S18M040_SV_Main", "box_GrafittiMonitor_1.Completed", "box_Multiple_AND_12.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_GrafittiMonitor_4_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_12()
  l0 = self.box_GrafittiMonitor_4
  l1 = self.box_Multiple_AND_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1312723639", "1312723639", "S18M040_SV_Main", "box_GrafittiMonitor_4.Completed", "box_Multiple_AND_12.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_ObjectiveMonitor_v2_6_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ObjectiveMonitor_v2_6
  l1 = self.box_MissionMessageController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1138629732", "1138629732", "S18M040_SV_Main", "box_ObjectiveMonitor_v2_6.Disabled", "box_MissionMessageController_v3_9.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_ObjectiveMonitor_v2_6_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_ObjectiveMonitor_v2_6
  l1 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|445780570", "445780570", "S18M040_SV_Main", "box_ObjectiveMonitor_v2_6.ObjectiveCompleted", "box_MultipleOR_13.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1557500828"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_MissionMessageController_v3_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|206420495", "206420495", "S18M040_SV_Main", "box_MissionMessageController_v3_3.Out", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_LayerMonitor_7_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = self.ObjectiveMain
  l0.IncrementalObjectiveTotal = 4
  l0 = self.box_LayerMonitor_7
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1584289189", "1584289189", "S18M040_SV_Main", "box_LayerMonitor_7.Loaded", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ObjectiveMonitor_v2_6()
  l0 = self.box_ObjectiveMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|707947880", "707947880", "S18M040_SV_Main", "box_Ordered_Output_5.Out", "box_ObjectiveMonitor_v2_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|2009130859"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_2_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_2_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|800366686", "800366686", "S18M040_SV_Main", "box_Ordered_Output_5.Out", "box_Ordered_Output_2.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_9
  l1 = self.box_MissionController_v4_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1304394509", "1304394509", "S18M040_SV_Main", "box_MissionMessageController_v3_9.Out", "box_MissionController_v4_10.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_GrafittiMonitor_8_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_12()
  l0 = self.box_GrafittiMonitor_8
  l1 = self.box_Multiple_AND_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1871581830", "1871581830", "S18M040_SV_Main", "box_GrafittiMonitor_8.Completed", "box_Multiple_AND_12.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Multiple_AND_12_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_Multiple_AND_12
  l1 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|394170753", "394170753", "S18M040_SV_Main", "box_Multiple_AND_12.Out", "box_MultipleOR_13.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ObjectiveMonitor_v2_6()
  l0 = self.box_MultipleOR_13
  l1 = self.box_ObjectiveMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1784861030", "1784861030", "S18M040_SV_Main", "box_MultipleOR_13.Out", "box_ObjectiveMonitor_v2_6.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GrafittiMonitor_1
  l0.Interaction = "9223372058736548705"
  l0.Icon = "9223372048107706489"
  l0.ProgressionTag = "ProgressionTag.9223372048107706479"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|721047265", "721047265", "S18M040_SV_Main", "box_Ordered_Output_2.Out", "box_GrafittiMonitor_1.Enable", clone, l0)
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
  l0 = self.box_GrafittiMonitor_4
  l0.Interaction = "9223372046857141168"
  l0.Icon = "9223372048107747986"
  l0.ProgressionTag = "ProgressionTag.9223372048107665802"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1973491374", "1973491374", "S18M040_SV_Main", "box_Ordered_Output_2.Out", "box_GrafittiMonitor_4.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_2_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GrafittiMonitor_8
  l0.Interaction = "9223372047975450333"
  l0.Icon = "9223372048107791273"
  l0.ProgressionTag = "ProgressionTag.9223372048107665751"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|160072568", "160072568", "S18M040_SV_Main", "box_Ordered_Output_2.Out", "box_GrafittiMonitor_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_2_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GrafittiMonitor_11
  l0.Interaction = "9223372047133884203"
  l0.Icon = "9223372048107748538"
  l0.ProgressionTag = "ProgressionTag.9223372048107748540"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M040_SV.domino|@S18M040_SV_Main|1550151900", "1550151900", "S18M040_SV_Main", "box_Ordered_Output_2.Out", "box_GrafittiMonitor_11.Enable", clone, l0)
  l0:Enable()
end
function export:OnEnter_box_ObjectiveMonitor_v2_6()
  local l0
  l0 = self.box_ObjectiveMonitor_v2_6
  l0.Objective = self.ObjectiveMain
end
function export:OnEnter_box_Multiple_AND_12()
end
function export:OnEnter_box_MultipleOR_13()
end
_compilerVersion = 4
