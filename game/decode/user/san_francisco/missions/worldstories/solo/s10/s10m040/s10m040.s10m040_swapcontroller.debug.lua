export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S10M040_SwapController"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController"
  self.Hidden = DummyFunction
  self.Showed = DummyFunction
  self.Started = DummyFunction
  self.WorldObjects = {}
  self.ObjectToHide = nil
  self.box_EntityLoadingMonitor_2 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_2
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|63765052"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_EntityLoadingMonitor_2_Disabled
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_2_AllLoaded
  self.box_ListWriter_3 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_3
  l0._graph = self
  l0._name = "box_ListWriter_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|381168321"
  l0._DynamicAnchors = {Data = 11}
  l0.Added = self.f_box_ListWriter_3_Added
  l0.Removed = self.f_box_ListWriter_3_Removed
  l0.Out = self.f_box_ListWriter_3_Out
  self.box_Multiple_AND_6 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_6
  l0._graph = self
  l0._name = "box_Multiple_AND_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|590539587"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_6_Out
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|783988792"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_EntityLoadingMonitor_8 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_8
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|950029417"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_EntityLoadingMonitor_8_Disabled
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_8_AllLoaded
  self.box_Multiple_AND_7 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_7
  l0._graph = self
  l0._name = "box_Multiple_AND_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1353000565"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_7_Out
  self.box_ListForEach_10 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_10
  l0._graph = self
  l0._name = "box_ListForEach_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1449691579"
  l0.Started = self.f_box_ListForEach_10_Started
  l0.Stopped = self.f_box_ListForEach_10_Stopped
  l0.ForEach = self.f_box_ListForEach_10_ForEach
  l0.GotNext = self.f_box_ListForEach_10_GotNext
  l0.EndOfList = self.f_box_ListForEach_10_EndOfList
  l0.GotFirst = DummyFunction
  self.box_ListForEach_4 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_4
  l0._graph = self
  l0._name = "box_ListForEach_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1535272421"
  l0.Started = self.f_box_ListForEach_4_Started
  l0.Stopped = self.f_box_ListForEach_4_Stopped
  l0.ForEach = self.f_box_ListForEach_4_ForEach
  l0.GotNext = self.f_box_ListForEach_4_GotNext
  l0.EndOfList = self.f_box_ListForEach_4_EndOfList
  l0.GotFirst = DummyFunction
  self.box_MultipleOR_1 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|2134695040"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Hide()
  local l0
  self:OnEnter_box_Multiple_AND_6()
  l0 = self.box_Multiple_AND_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|2004831875", "2004831875", "S10M040_SwapController", "Hide", "box_Multiple_AND_6.Condition", self, l0)
  l0:Condition(0)
end
function export:Show()
  local l0
  self:OnEnter_box_Multiple_AND_7()
  l0 = self.box_Multiple_AND_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|433563044", "433563044", "S10M040_SwapController", "Show", "box_Multiple_AND_7.Condition", self, l0)
  l0:Condition(0)
end
function export:Start()
  local l0
  l0 = self.box_ListWriter_3
  l0.Input = self.WorldObjects
  l0.Data[0] = "9223372058348118201"
  l0.Data[1] = "9223372058348119251"
  l0.Data[2] = "9223372064387582166"
  l0.Data[3] = "9223372059127590554"
  l0.Data[4] = "9223372059127590555"
  l0.Data[5] = "9223372058348118200"
  l0.Data[6] = "9223372058348118199"
  l0.Data[7] = "9223372058348118728"
  l0.Data[8] = "9223372059127593099"
  l0.Data[9] = "9223372059127593101"
  l0.Data[10] = "9223372064387582164"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1845203381", "1845203381", "S10M040_SwapController", "Start", "box_ListWriter_3.Add", self, l0)
  l0:Add()
end
function export:f_box_EntityLoadingMonitor_2_AllLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_2()
  l0 = self.box_EntityLoadingMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1650445180", "1650445180", "S10M040_SwapController", "box_EntityLoadingMonitor_2.AllLoaded", "box_EntityLoadingMonitor_2.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_EntityLoadingMonitor_2_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_EntityLoadingMonitor_2
  l1 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|530612292", "530612292", "S10M040_SwapController", "box_EntityLoadingMonitor_2.Disabled", "box_MultipleOR_1.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VisibilityController_v2_5_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1274097089", "1274097089", "S10M040_SwapController", "box_VisibilityController_v2_5.Hidden", "box_MultipleOR_1.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ListWriter_3_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_3
  self.WorldObjects = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1321198325"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_9_Out_2
  l0 = self.box_ListWriter_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1257217682", "1257217682", "S10M040_SwapController", "box_ListWriter_3.Added", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_3_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_3
  self.WorldObjects = l0.Target
end
function export:f_box_ListWriter_3_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_3
  self.WorldObjects = l0.Target
end
function export:f_box_Multiple_AND_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_2()
  l0 = self.box_Multiple_AND_6
  l1 = self.box_EntityLoadingMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|407048555", "407048555", "S10M040_SwapController", "box_Multiple_AND_6.Out", "box_EntityLoadingMonitor_2.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VisibilityController_v2_11_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1908152985", "1908152985", "S10M040_SwapController", "box_VisibilityController_v2_11.Shown", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_10
  l0.List = self.WorldObjects
  l0 = self.box_MultipleOR_12
  l1 = self.box_ListForEach_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1010299702", "1010299702", "S10M040_SwapController", "box_MultipleOR_12.Out", "box_ListForEach_10.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_EntityLoadingMonitor_8_AllLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_8()
  l0 = self.box_EntityLoadingMonitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|931670289", "931670289", "S10M040_SwapController", "box_EntityLoadingMonitor_8.AllLoaded", "box_EntityLoadingMonitor_8.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_EntityLoadingMonitor_8_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_EntityLoadingMonitor_8
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1666743552", "1666743552", "S10M040_SwapController", "box_EntityLoadingMonitor_8.Disabled", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_6()
  l0 = self.box_Multiple_AND_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1434699314", "1434699314", "S10M040_SwapController", "box_Ordered_Output_9.Out", "box_Multiple_AND_6.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1706955829", "1706955829", "S10M040_SwapController", "box_Ordered_Output_9.Out", "Started", clone, self)
  self:Started()
end
function export:f_box_Ordered_Output_9_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_7()
  l0 = self.box_Multiple_AND_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|595596250", "595596250", "S10M040_SwapController", "box_Ordered_Output_9.Out", "box_Multiple_AND_7.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Multiple_AND_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_8()
  l0 = self.box_Multiple_AND_7
  l1 = self.box_EntityLoadingMonitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|915479225", "915479225", "S10M040_SwapController", "box_Multiple_AND_7.Out", "box_EntityLoadingMonitor_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListForEach_10_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_10
  self.ObjectToHide = l0.Data
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|879967700", "879967700", "S10M040_SwapController", "box_ListForEach_10.EndOfList", "Showed", l0, self)
  self:Showed()
end
function export:f_box_ListForEach_10_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_10
  self.ObjectToHide = l0.Data
end
function export:f_box_ListForEach_10_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_10
  self.ObjectToHide = l0.Data
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.ObjectToHide
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|727406348"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_11_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_ListForEach_10
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|1993244181", "1993244181", "S10M040_SwapController", "box_ListForEach_10.GotNext", "box_VisibilityController_v2_11.Show", l0, l1)
  l1:Show()
end
function export:f_box_ListForEach_10_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_10
  self.ObjectToHide = l0.Data
end
function export:f_box_ListForEach_10_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_10
  self.ObjectToHide = l0.Data
end
function export:f_box_ListForEach_4_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_4
  self.ObjectToHide = l0.Data
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|873144030", "873144030", "S10M040_SwapController", "box_ListForEach_4.EndOfList", "Hidden", l0, self)
  self:Hidden()
end
function export:f_box_ListForEach_4_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_4
  self.ObjectToHide = l0.Data
end
function export:f_box_ListForEach_4_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_4
  self.ObjectToHide = l0.Data
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.ObjectToHide
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|85991960"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_5_Hidden
  l0.Out = DummyFunction
  l0 = self.box_ListForEach_4
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|154487956", "154487956", "S10M040_SwapController", "box_ListForEach_4.GotNext", "box_VisibilityController_v2_5.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_ListForEach_4_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_4
  self.ObjectToHide = l0.Data
end
function export:f_box_ListForEach_4_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_4
  self.ObjectToHide = l0.Data
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_4
  l0.List = self.WorldObjects
  l0 = self.box_MultipleOR_1
  l1 = self.box_ListForEach_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_SwapController|153928260", "153928260", "S10M040_SwapController", "box_MultipleOR_1.Out", "box_ListForEach_4.GetNext", l0, l1)
  l1:GetNext()
end
function export:OnEnter_box_EntityLoadingMonitor_2()
  local l0
  l0 = self.box_EntityLoadingMonitor_2
  l0.EntityList = self.WorldObjects
end
function export:OnEnter_box_Multiple_AND_6()
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_EntityLoadingMonitor_8()
  local l0
  l0 = self.box_EntityLoadingMonitor_8
  l0.EntityList = self.WorldObjects
end
function export:OnEnter_box_Multiple_AND_7()
end
function export:OnEnter_box_MultipleOR_1()
end
function export:Hidden()
end
function export:Showed()
end
function export:Started()
end
_compilerVersion = 4
