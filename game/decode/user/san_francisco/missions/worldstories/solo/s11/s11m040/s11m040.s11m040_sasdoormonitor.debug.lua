export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S11M040_SASDoorMonitor"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor"
  self.HackEnabled = DummyFunction
  self.HackDisabled = DummyFunction
  self.Started = DummyFunction
  self.MovedBackward = DummyFunction
  self.MovedForward = DummyFunction
  self.EntitiesList = {}
  self.box_ListWriter_1 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_1
  l0._graph = self
  l0._name = "box_ListWriter_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|37557052"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_1_Added
  l0.Removed = self.f_box_ListWriter_1_Removed
  l0.Out = self.f_box_ListWriter_1_Out
  self.box_EntityLoadingMonitor_8 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_8
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|713550893"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_EntityLoadingMonitor_8_Disabled
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_8_AllLoaded
  self.box_HackableController_v2_3 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_3
  l0._graph = self
  l0._name = "box_HackableController_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|1549979902"
  l0.Enabled = self.f_box_HackableController_v2_3_Enabled
  l0.Disabled = self.f_box_HackableController_v2_3_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Multiple_AND_6 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_6
  l0._graph = self
  l0._name = "box_Multiple_AND_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|1677203172"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_6_Out
  self.box_Multiple_AND_4 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_4
  l0._graph = self
  l0._name = "box_Multiple_AND_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|1889407435"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_4_Out
  self.box_EntityLoadingMonitor_5 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_5
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|1944845337"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_EntityLoadingMonitor_5_Disabled
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_5_AllLoaded
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
  self:OnEnter_box_Multiple_AND_6()
  l0 = self.box_Multiple_AND_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|1780392408", "1780392408", "S11M040_SASDoorMonitor", "DisableHack", "box_Multiple_AND_6.Condition", self, l0)
  l0:Condition(1)
end
function export:EnableHack()
  local l0
  self:OnEnter_box_Multiple_AND_4()
  l0 = self.box_Multiple_AND_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|491969907", "491969907", "S11M040_SASDoorMonitor", "EnableHack", "box_Multiple_AND_4.Condition", self, l0)
  l0:Condition(1)
end
function export:MoveBackward()
  local l0
  self:OnEnter_box_MoveableEntityController_2()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|1777181059", "1777181059", "S11M040_SASDoorMonitor", "MoveBackward", "box_MoveableEntityController_2.MoveBackward", self, l0)
  l0:MoveBackward()
end
function export:MoveForward()
  local l0
  self:OnEnter_box_MoveableEntityController_2()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|1830461304", "1830461304", "S11M040_SASDoorMonitor", "MoveForward", "box_MoveableEntityController_2.MoveForward", self, l0)
  l0:MoveForward()
end
function export:Start()
  local l0
  l0 = self.box_ListWriter_1
  l0.Input = self.EntitiesList
  l0.Data[0] = "9223372055178799835"
  l0.Data[1] = "9223372055178799847"
  l0.Data[2] = "9223372055178799849"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|392894692", "392894692", "S11M040_SASDoorMonitor", "Start", "box_ListWriter_1.Add", self, l0)
  l0:Add()
end
function export:f_box_ListWriter_1_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_1
  self.EntitiesList = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|1618359202"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_7_Out_2
  l0 = self.box_ListWriter_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|45172005", "45172005", "S11M040_SASDoorMonitor", "box_ListWriter_1.Added", "box_Ordered_Output_7.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_1_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_1
  self.EntitiesList = l0.Target
end
function export:f_box_ListWriter_1_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_1
  self.EntitiesList = l0.Target
end
function export:f_box_EntityLoadingMonitor_8_AllLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_8()
  l0 = self.box_EntityLoadingMonitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|572299647", "572299647", "S11M040_SASDoorMonitor", "box_EntityLoadingMonitor_8.AllLoaded", "box_EntityLoadingMonitor_8.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_EntityLoadingMonitor_8_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_3()
  l0 = self.box_EntityLoadingMonitor_8
  l1 = self.box_HackableController_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|254295787", "254295787", "S11M040_SASDoorMonitor", "box_EntityLoadingMonitor_8.Disabled", "box_HackableController_v2_3.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MoveableEntityController_2_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|1530056657", "1530056657", "S11M040_SASDoorMonitor", "box_MoveableEntityController_2.MovedBackward", "MovedBackward", clone, self)
  self:MovedBackward()
end
function export:f_box_MoveableEntityController_2_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|1549731480", "1549731480", "S11M040_SASDoorMonitor", "box_MoveableEntityController_2.MovedForward", "MovedForward", clone, self)
  self:MovedForward()
end
function export:f_box_HackableController_v2_3_Disabled()
  local l0
  self = self._graph
  l0 = self.box_HackableController_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|1979134622", "1979134622", "S11M040_SASDoorMonitor", "box_HackableController_v2_3.Disabled", "HackDisabled", l0, self)
  self:HackDisabled()
end
function export:f_box_HackableController_v2_3_Enabled()
  local l0
  self = self._graph
  l0 = self.box_HackableController_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|2062352516", "2062352516", "S11M040_SASDoorMonitor", "box_HackableController_v2_3.Enabled", "HackEnabled", l0, self)
  self:HackEnabled()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_4()
  l0 = self.box_Multiple_AND_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|668881734", "668881734", "S11M040_SASDoorMonitor", "box_Ordered_Output_7.Out", "box_Multiple_AND_4.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_6()
  l0 = self.box_Multiple_AND_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|73325755", "73325755", "S11M040_SASDoorMonitor", "box_Ordered_Output_7.Out", "box_Multiple_AND_6.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_7_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|619528898", "619528898", "S11M040_SASDoorMonitor", "box_Ordered_Output_7.Out", "Started", clone, self)
  self:Started()
end
function export:f_box_Multiple_AND_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_8()
  l0 = self.box_Multiple_AND_6
  l1 = self.box_EntityLoadingMonitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|744361154", "744361154", "S11M040_SASDoorMonitor", "box_Multiple_AND_6.Out", "box_EntityLoadingMonitor_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Multiple_AND_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_5()
  l0 = self.box_Multiple_AND_4
  l1 = self.box_EntityLoadingMonitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|753568593", "753568593", "S11M040_SASDoorMonitor", "box_Multiple_AND_4.Out", "box_EntityLoadingMonitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_EntityLoadingMonitor_5_AllLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_5()
  l0 = self.box_EntityLoadingMonitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|852050665", "852050665", "S11M040_SASDoorMonitor", "box_EntityLoadingMonitor_5.AllLoaded", "box_EntityLoadingMonitor_5.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_EntityLoadingMonitor_5_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_3()
  l0 = self.box_EntityLoadingMonitor_5
  l1 = self.box_HackableController_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|2125500310", "2125500310", "S11M040_SASDoorMonitor", "box_EntityLoadingMonitor_5.Disabled", "box_HackableController_v2_3.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:OnEnter_box_EntityLoadingMonitor_8()
  local l0
  l0 = self.box_EntityLoadingMonitor_8
  l0.EntityList = self.EntitiesList
end
function export:OnEnter_box_MoveableEntityController_2()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372055178799835"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_SASDoorMonitor|947018171"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_2_MovedForward
  l0.MovedBackward = self.f_box_MoveableEntityController_2_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_HackableController_v2_3()
  local l0
  l0 = self.box_HackableController_v2_3
  l0.HackableEntityList = self.EntitiesList
end
function export:OnEnter_box_Multiple_AND_6()
end
function export:OnEnter_box_Multiple_AND_4()
end
function export:OnEnter_box_EntityLoadingMonitor_5()
  local l0
  l0 = self.box_EntityLoadingMonitor_5
  l0.EntityList = self.EntitiesList
end
function export:HackEnabled()
end
function export:HackDisabled()
end
function export:Started()
end
function export:MovedBackward()
end
function export:MovedForward()
end
_compilerVersion = 4
