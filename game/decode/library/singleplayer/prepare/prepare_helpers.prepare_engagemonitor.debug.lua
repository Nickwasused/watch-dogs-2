export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PrepareEngageMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Prepare_EngageMonitor"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor"
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.Engaged = DummyFunction
  self.isDisableCalled = 0
  self.box_PrepareEngageMonitor_12 = cbox:CreateBox("Domino/System/PrepareEngageMonitor.lua")
  l0 = self.box_PrepareEngageMonitor_12
  l0._graph = self
  l0._name = "box_PrepareEngageMonitor_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|370260099"
  l0.Enabled = self.f_box_PrepareEngageMonitor_12_Enabled
  l0.Disabled = self.f_box_PrepareEngageMonitor_12_Disabled
  l0.Engaged = self.f_box_PrepareEngageMonitor_12_Engaged
  self.box_SetBoolean_v2_2 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_2
  l0._graph = self
  l0._name = "box_SetBoolean_v2_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|623743129"
  l0.Out = self.f_box_SetBoolean_v2_2_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_2_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_2_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_2_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_2_SetFromBool
  self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|809221073"
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
function export:Disable()
  local l0
  l0 = self.box_SetBoolean_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|1951536469", "1951536469", "Prepare_EngageMonitor", "Disable", "box_SetBoolean_v2_2.True", self, l0)
  l0:True()
end
function export:Enable()
  local l0
  self:OnEnter_box_PrepareEngageMonitor_12()
  l0 = self.box_PrepareEngageMonitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|2132050785", "2132050785", "Prepare_EngageMonitor", "Enable", "box_PrepareEngageMonitor_12.Enable", self, l0)
  l0:Enable()
end
function export:f_box_PrepareEngageMonitor_12_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isDisableCalled
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|1882219918"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_11_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_11_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PrepareEngageMonitor_12
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|2075847048", "2075847048", "Prepare_EngageMonitor", "box_PrepareEngageMonitor_12.Disabled", "box_Compare_Boolean_v2_11.In", l0, l1)
  l1:In()
end
function export:f_box_PrepareEngageMonitor_12_Enabled()
  local l0
  self = self._graph
  l0 = self.box_PrepareEngageMonitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|388215793", "388215793", "Prepare_EngageMonitor", "box_PrepareEngageMonitor_12.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_PrepareEngageMonitor_12_Engaged()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_PrepareEngageMonitor_12
  l1 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|48641999", "48641999", "Prepare_EngageMonitor", "box_PrepareEngageMonitor_12.Engaged", "box_MultipleOR_1.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_2_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.isDisableCalled = l0.Target
end
function export:f_box_SetBoolean_v2_2_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.isDisableCalled = l0.Target
end
function export:f_box_SetBoolean_v2_2_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.isDisableCalled = l0.Target
end
function export:f_box_SetBoolean_v2_2_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.isDisableCalled = l0.Target
  self:OnEnter_box_MultipleOR_1()
  l1 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|1218111418", "1218111418", "Prepare_EngageMonitor", "box_SetBoolean_v2_2.SetTrue", "box_MultipleOR_1.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_2_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.isDisableCalled = l0.Target
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PrepareEngageMonitor_12()
  l0 = self.box_MultipleOR_1
  l1 = self.box_PrepareEngageMonitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|270012749", "270012749", "Prepare_EngageMonitor", "box_MultipleOR_1.Out", "box_PrepareEngageMonitor_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Compare_Boolean_v2_11_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|247339579", "247339579", "Prepare_EngageMonitor", "box_Compare_Boolean_v2_11.A_is_False", "Engaged", clone, self)
  self:Engaged()
end
function export:f_box_Compare_Boolean_v2_11_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare_EngageMonitor|856892554", "856892554", "Prepare_EngageMonitor", "box_Compare_Boolean_v2_11.A_is_True", "Disabled", clone, self)
  self:Disabled()
end
function export:OnEnter_box_PrepareEngageMonitor_12()
  local l0
  l0 = self.box_PrepareEngageMonitor_12
  l0.InsideAreaText = self.HintEngageable
  l0.OutOfAreaText = self.HintOutOfArea
  l0.ProgressBarText = self.ProgressBarText
  l0.TextDelay = self.TextDelay
  l0.MissionArea = self.MissionArea
end
function export:OnEnter_box_MultipleOR_1()
end
function export:Enabled()
end
function export:Disabled()
end
function export:Engaged()
end
_compilerVersion = 4
