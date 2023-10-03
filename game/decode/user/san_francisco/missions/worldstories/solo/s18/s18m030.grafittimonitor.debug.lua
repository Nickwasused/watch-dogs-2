export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "GrafittiMonitor"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor"
  self.Completed = DummyFunction
  self.Disabled = DummyFunction
  self.Enabled = DummyFunction
  self.box_MissionMessageController_v3_4 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_4
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|457927931"
  l0.Out = self.f_box_MissionMessageController_v3_4_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_1 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|525182862"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
  self.box_Progression_Tag_Monitor_7 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_7
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|857212882"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_7_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_7_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_7_TagIsOwned
  l0.Has = self.f_box_Progression_Tag_Monitor_7_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_7_HasNOT
  self.box_MapPointController_v4_6 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_6
  l0._graph = self
  l0._name = "box_MapPointController_v4_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|1231289930"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_6_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|1515070541"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|761228984"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|711592453", "711592453", "GrafittiMonitor", "Disable", "box_Ordered_Output_2.In", self, l0)
  l0:In()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|1504957033"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|824512855", "824512855", "GrafittiMonitor", "Enable", "box_Ordered_Output_8.In", self, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MissionMessageController_v3_4
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|1699195901", "1699195901", "GrafittiMonitor", "box_MissionMessageController_v3_4.Out", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_7()
  l0 = self.box_MultipleOR_1
  l1 = self.box_Progression_Tag_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|1056968799", "1056968799", "GrafittiMonitor", "box_MultipleOR_1.Out", "box_Progression_Tag_Monitor_7.Disable", l0, l1)
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
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|376469359", "376469359", "GrafittiMonitor", "box_Ordered_Output_2.Out", "box_MultipleOR_1.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|780385277", "780385277", "GrafittiMonitor", "box_Ordered_Output_2.Out", "Disabled", clone, self)
  self:Disabled()
end
function export:f_box_Progression_Tag_Monitor_7_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_4
  l0.Objective = self.Objective
  l0 = self.box_Progression_Tag_Monitor_7
  l1 = self.box_MissionMessageController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|1130627754", "1130627754", "GrafittiMonitor", "box_Progression_Tag_Monitor_7.Disabled", "box_MissionMessageController_v3_4.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Progression_Tag_Monitor_7_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_6()
  l0 = self.box_Progression_Tag_Monitor_7
  l1 = self.box_MapPointController_v4_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|934130453", "934130453", "GrafittiMonitor", "box_Progression_Tag_Monitor_7.Enabled", "box_MapPointController_v4_6.Show", l0, l1)
  l1:Show()
end
function export:f_box_Progression_Tag_Monitor_7_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_Progression_Tag_Monitor_7
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|127064846", "127064846", "GrafittiMonitor", "box_Progression_Tag_Monitor_7.Has", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_7_HasNOT()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_7()
  l0 = self.box_Progression_Tag_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|365619120", "365619120", "GrafittiMonitor", "box_Progression_Tag_Monitor_7.HasNOT", "box_Progression_Tag_Monitor_7.Enable", l0, l0)
  l0:Enable()
end
function export:f_box_Progression_Tag_Monitor_7_TagIsOwned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_Progression_Tag_Monitor_7
  l1 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|173810971", "173810971", "GrafittiMonitor", "box_Progression_Tag_Monitor_7.TagIsOwned", "box_MultipleOR_1.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MapPointController_v4_6_Hidden()
  local l0
  self = self._graph
  l0 = self.box_MapPointController_v4_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|267898759", "267898759", "GrafittiMonitor", "box_MapPointController_v4_6.Hidden", "Completed", l0, self)
  self:Completed()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Progression_Tag_Monitor_7()
  l0 = self.box_Progression_Tag_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|1943287490", "1943287490", "GrafittiMonitor", "box_Ordered_Output_8.Out", "box_Progression_Tag_Monitor_7.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|262479905", "262479905", "GrafittiMonitor", "box_Ordered_Output_8.Out", "Enabled", clone, self)
  self:Enabled()
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_6()
  l0 = self.box_MultipleOR_3
  l1 = self.box_MapPointController_v4_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M030.domino|@GrafittiMonitor|948838258", "948838258", "GrafittiMonitor", "box_MultipleOR_3.Out", "box_MapPointController_v4_6.Hide", l0, l1)
  l1:Hide()
end
function export:OnEnter_box_MultipleOR_1()
end
function export:OnEnter_box_Progression_Tag_Monitor_7()
  local l0
  l0 = self.box_Progression_Tag_Monitor_7
  l0.ProgressionTag = self.ProgressionTag
end
function export:OnEnter_box_MapPointController_v4_6()
  local l0
  l0 = self.box_MapPointController_v4_6
  l0.MapPoint = self.Icon
end
function export:OnEnter_box_MultipleOR_3()
end
function export:Completed()
end
function export:Disabled()
end
function export:Enabled()
end
_compilerVersion = 4
