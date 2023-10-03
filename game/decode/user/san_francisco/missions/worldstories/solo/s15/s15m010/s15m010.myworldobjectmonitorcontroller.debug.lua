export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/HackableDoorController.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self._name = "MyWorldObjectMonitorController"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController"
  self.Aquarium_Doors_Open_Wrench = {}
  self.EMP_Parts = {}
  self.WrenchJr_Garage_Door = {}
  self.box_EntityLoadingMonitor_6 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_6
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|28201213"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_6_AllLoaded
  self.box_EntityLoadingMonitor_2 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_2
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|431381378"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_2_AllLoaded
  self.box_HackableController_v2_12 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_12
  l0._graph = self
  l0._name = "box_HackableController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|550449462"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_ListWriter_1 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_1
  l0._graph = self
  l0._name = "box_ListWriter_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1328243583"
  l0._DynamicAnchors = {Data = 18}
  l0.Added = self.f_box_ListWriter_1_Added
  l0.Removed = self.f_box_ListWriter_1_Removed
  l0.Out = self.f_box_ListWriter_1_Out
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1350612010"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_Hackable_Door_Controller_8 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_8
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1473342833"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = DummyFunction
  self.box_HackableController_v2_7 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_7
  l0._graph = self
  l0._name = "box_HackableController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1635770936"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hackable_Door_Controller_11 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_11
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|2142064250"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:DisableHack()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1031787288"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|742117288", "742117288", "MyWorldObjectMonitorController", "DisableHack", "box_Ordered_Output_5.In", self, l0)
  l0:In()
end
function export:EnableHack()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|451656298"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_3_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|848481283", "848481283", "MyWorldObjectMonitorController", "EnableHack", "box_Ordered_Output_3.In", self, l0)
  l0:In()
end
function export:f_box_EntityLoadingMonitor_6_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1441344036"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_10_Out_2
  l0 = self.box_EntityLoadingMonitor_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|724144163", "724144163", "MyWorldObjectMonitorController", "box_EntityLoadingMonitor_6.AllLoaded", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_EntityLoadingMonitor_2_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1884898056"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_9_Out_2
  l0 = self.box_EntityLoadingMonitor_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|124787437", "124787437", "MyWorldObjectMonitorController", "box_EntityLoadingMonitor_2.AllLoaded", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|2121139938", "2121139938", "MyWorldObjectMonitorController", "box_Ordered_Output_3.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_EntityLoadingMonitor_2()
  l0 = self.box_EntityLoadingMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|531581146", "531581146", "MyWorldObjectMonitorController", "box_Ordered_Output_3.Out", "box_EntityLoadingMonitor_2.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_3_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_EntityLoadingMonitor_6
  l0.AutoDisable = 1
  l0.EntityList = self.Aquarium_Doors_Open_Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1964206076", "1964206076", "MyWorldObjectMonitorController", "box_Ordered_Output_3.Out", "box_EntityLoadingMonitor_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1215338210", "1215338210", "MyWorldObjectMonitorController", "box_Ordered_Output_5.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_EntityLoadingMonitor_2()
  l0 = self.box_EntityLoadingMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1184334993", "1184334993", "MyWorldObjectMonitorController", "box_Ordered_Output_5.Out", "box_EntityLoadingMonitor_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ListWriter_1_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_1
  self.Aquarium_Doors_Open_Wrench = l0.Target
end
function export:f_box_ListWriter_1_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_1
  self.Aquarium_Doors_Open_Wrench = l0.Target
end
function export:f_box_ListWriter_1_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_1
  self.Aquarium_Doors_Open_Wrench = l0.Target
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_1
  l0.Input = self.Aquarium_Doors_Open_Wrench
  l0.Data[0] = "9223372059789924319"
  l0.Data[1] = "9223372059789924321"
  l0.Data[2] = "9223372059789924313"
  l0.Data[3] = "9223372056229363297"
  l0.Data[4] = "9223372056229363299"
  l0.Data[5] = "9223372056229363287"
  l0.Data[6] = "9223372056229363311"
  l0.Data[7] = "9223372056229363313"
  l0.Data[8] = "9223372056229363301"
  l0.Data[9] = "9223372056229363325"
  l0.Data[10] = "9223372056229363327"
  l0.Data[11] = "9223372056229363315"
  l0.Data[12] = "9223372059446228060"
  l0.Data[13] = "9223372059446228062"
  l0.Data[14] = "9223372059446228054"
  l0.Data[15] = "9223372056229363494"
  l0.Data[16] = "9223372056229363496"
  l0.Data[17] = "9223372056229363484"
  l0 = self.box_MultipleOR_4
  l1 = self.box_ListWriter_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1738634296", "1738634296", "MyWorldObjectMonitorController", "box_MultipleOR_4.Out", "box_ListWriter_1.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Door_Controller_11
  l0.EntityList = self.Aquarium_Doors_Open_Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1208338079", "1208338079", "MyWorldObjectMonitorController", "box_Ordered_Output_10.Out", "box_Hackable_Door_Controller_11.EnableAiAccess", clone, l0)
  l0:EnableAiAccess()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_7()
  l0 = self.box_HackableController_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|337478836", "337478836", "MyWorldObjectMonitorController", "box_Ordered_Output_10.Out", "box_HackableController_v2_7.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_Ordered_Output_10_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_7()
  l0 = self.box_HackableController_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|718538934", "718538934", "MyWorldObjectMonitorController", "box_Ordered_Output_10.Out", "box_HackableController_v2_7.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Door_Controller_8
  l0.EntityList = self.Aquarium_Doors_Open_Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1151343352", "1151343352", "MyWorldObjectMonitorController", "box_Ordered_Output_9.Out", "box_Hackable_Door_Controller_8.DisableAiAccess", clone, l0)
  l0:DisableAiAccess()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_12()
  l0 = self.box_HackableController_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|1916629590", "1916629590", "MyWorldObjectMonitorController", "box_Ordered_Output_9.Out", "box_HackableController_v2_12.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_9_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_12()
  l0 = self.box_HackableController_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\S15M010.domino|@MyWorldObjectMonitorController|30985696", "30985696", "MyWorldObjectMonitorController", "box_Ordered_Output_9.Out", "box_HackableController_v2_12.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:OnEnter_box_EntityLoadingMonitor_2()
  local l0
  l0 = self.box_EntityLoadingMonitor_2
  l0.EntityList = self.Aquarium_Doors_Open_Wrench
end
function export:OnEnter_box_HackableController_v2_12()
  local l0
  l0 = self.box_HackableController_v2_12
  l0.HackableEntityList = self.Aquarium_Doors_Open_Wrench
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_HackableController_v2_7()
  local l0
  l0 = self.box_HackableController_v2_7
  l0.HackableEntityList = self.Aquarium_Doors_Open_Wrench
  l0.ProfileLinkedToHack = 1
end
_compilerVersion = 4
