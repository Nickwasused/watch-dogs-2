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
  self._name = "S18M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main"
  self.PlayerEntity = nil
  self.LayerMain = "S18M030_Main"
  self.Mission = "MissionList.9223372047730692852"
  self.L04_0 = "9223372047919956597"
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives",
    item = "Objective",
    id = "697846"
  }
  self.GraffitiInteraction_OAK_02_Chinatown_1 = "9223372048107706475"
  self.L04_OAK_02_Chinatown_1 = "9223372048107706489"
  self.L04_OAK_01_CivicCenter_2 = "9223372048107747984"
  self.GraffitiInteraction_OAK_CivicCenter_0 = "9223372046857141168"
  self.L04_OAK_CivicCenter_0 = "9223372048107747986"
  self.GraffitiInteraction_OAK_04_JackLondon_1 = "9223372048107706481"
  self.GraffitiInteraction_OAK_CivicCenter_2 = "9223372047133884203"
  self.L04_OAK_01_CivicCenter_5 = "9223372048107748538"
  self.GraffitiInteraction_MissionBay_West_2 = "9223372047133884203"
  self.L04_MissionBay_West_2_5 = "9223372048107748538"
  self.OAK_04_JackLondon_1 = "9223372048107748536"
  self.Interaction_SF_08_1 = "9223372047888725709"
  self.L04_SF_08_SOMA_SouthBeach_1 = "9223372048107791269"
  self.Inter_CivicCenter_2 = "9223372048107706470"
  self.Interaction_SF_02_Telegraph_Hill_1 = "9223372047975450333"
  self.L04_SF_02_Telegraph_Hill_1 = "9223372048107791273"
  self.Interaction_SF_02_Russian_Hill_1 = "9223372047893176054"
  self.L04_SF_02_Russian_Hill_1 = "9223372048107791690"
  self.ProximityRadius = 30
  self.box_GrafittiMonitor_13 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_13
  l0._graph = self
  l0._name = "box_GrafittiMonitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|55476864"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_13_Completed
  self.box_LayerMonitor_19 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_19
  l0._graph = self
  l0._name = "box_LayerMonitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|211143730"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_19_Loaded
  l0.Unloaded = DummyFunction
  self.box_GrafittiMonitor_11 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_11
  l0._graph = self
  l0._name = "box_GrafittiMonitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|233206399"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_11_Completed
  self.box_ObjectiveMonitor_v2_7 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_7
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|570508939"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_ObjectiveMonitor_v2_7_Disabled
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_7_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|646218304"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|981844356"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_GrafittiMonitor_12 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.debug.lua")
  l0 = self.box_GrafittiMonitor_12
  l0._graph = self
  l0._name = "box_GrafittiMonitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1825303156"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_box_GrafittiMonitor_12_Completed
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1846460437"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_Multiple_AND_2 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_2
  l0._graph = self
  l0._name = "box_Multiple_AND_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1854029115"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_2_Out
  self.box_MissionController_v4_5 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_5
  l0._graph = self
  l0._name = "box_MissionController_v4_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|2144158858"
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
  l0 = self.box_LayerMonitor_19
  l0.ProgressionLayer = "ProgressionLayers.9223372047730697258"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|424662710", "424662710", "S18M030_Main", "In", "box_LayerMonitor_19.Enable", self, l0)
  l0:Enable()
end
function export:f_box_GrafittiMonitor_13_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_2()
  l0 = self.box_GrafittiMonitor_13
  l1 = self.box_Multiple_AND_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|418011738", "418011738", "S18M030_Main", "box_GrafittiMonitor_13.Completed", "box_Multiple_AND_2.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_LayerMonitor_19_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = self.ObjectiveMain
  l0.IncrementalObjectiveTotal = 3
  l0 = self.box_LayerMonitor_19
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1502973813", "1502973813", "S18M030_Main", "box_LayerMonitor_19.Loaded", "box_MissionMessageController_v3_1.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_GrafittiMonitor_11_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_2()
  l0 = self.box_GrafittiMonitor_11
  l1 = self.box_Multiple_AND_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1787085534", "1787085534", "S18M030_Main", "box_GrafittiMonitor_11.Completed", "box_Multiple_AND_2.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ObjectiveMonitor_v2_7()
  l0 = self.box_ObjectiveMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|56869717", "56869717", "S18M030_Main", "box_Ordered_Output_4.Out", "box_ObjectiveMonitor_v2_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1529174953"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_8_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1454020169", "1454020169", "S18M030_Main", "box_Ordered_Output_4.Out", "box_Ordered_Output_8.In", clone, l0)
  l0:In()
end
function export:f_box_ObjectiveMonitor_v2_7_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ObjectiveMonitor_v2_7
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1089976854", "1089976854", "S18M030_Main", "box_ObjectiveMonitor_v2_7.Disabled", "box_MissionMessageController_v3_3.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_ObjectiveMonitor_v2_7_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_ObjectiveMonitor_v2_7
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|630472465", "630472465", "S18M030_Main", "box_ObjectiveMonitor_v2_7.ObjectiveCompleted", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|408241608"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0 = self.box_MissionMessageController_v3_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1120092836", "1120092836", "S18M030_Main", "box_MissionMessageController_v3_1.Out", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ObjectiveMonitor_v2_7()
  l0 = self.box_MultipleOR_6
  l1 = self.box_ObjectiveMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1590177249", "1590177249", "S18M030_Main", "box_MultipleOR_6.Out", "box_ObjectiveMonitor_v2_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GrafittiMonitor_11
  l0.Interaction = "9223372048408801208"
  l0.Icon = "9223372048498406865"
  l0.ProgressionTag = "ProgressionTag.9223372048440013771"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|99498695", "99498695", "S18M030_Main", "box_Ordered_Output_8.Out", "box_GrafittiMonitor_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GrafittiMonitor_12
  l0.Interaction = "9223372048408801204"
  l0.Icon = "9223372048498406861"
  l0.ProgressionTag = "ProgressionTag.9223372048440013769"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|995792576", "995792576", "S18M030_Main", "box_Ordered_Output_8.Out", "box_GrafittiMonitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_8_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GrafittiMonitor_13
  l0.Interaction = "9223372044036457019"
  l0.Icon = "9223372047919956597"
  l0.ProgressionTag = "ProgressionTag.9223372047919961297"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|10922232", "10922232", "S18M030_Main", "box_Ordered_Output_8.Out", "box_GrafittiMonitor_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_GrafittiMonitor_12_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_2()
  l0 = self.box_GrafittiMonitor_12
  l1 = self.box_Multiple_AND_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1692786899", "1692786899", "S18M030_Main", "box_GrafittiMonitor_12.Completed", "box_Multiple_AND_2.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_MissionController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|1023621866", "1023621866", "S18M030_Main", "box_MissionMessageController_v3_3.Out", "box_MissionController_v4_5.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Multiple_AND_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_Multiple_AND_2
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@S18M030_Main|80724086", "80724086", "S18M030_Main", "box_Multiple_AND_2.Out", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_ObjectiveMonitor_v2_7()
  local l0
  l0 = self.box_ObjectiveMonitor_v2_7
  l0.Objective = self.ObjectiveMain
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_Multiple_AND_2()
end
_compilerVersion = 4
