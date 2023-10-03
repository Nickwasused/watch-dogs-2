export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PGTController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S15M030_PGT_Manager"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager"
  self.Out = DummyFunction
  self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|57096820"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_PGTController_v2_2 = cbox:CreateBox("Domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_2
  l0._graph = self
  l0._name = "box_PGTController_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|72664576"
  l0.Started = self.f_box_PGTController_v2_2_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_PGTController_v2_4 = cbox:CreateBox("Domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_4
  l0._graph = self
  l0._name = "box_PGTController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|1509502870"
  l0.Started = self.f_box_PGTController_v2_4_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:GameFlow()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PGT_Marcus_Beats
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|1953087337"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_1_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_1_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|788581546", "788581546", "S15M030_PGT_Manager", "GameFlow", "box_Compare_Boolean_v2_1.In", self, l0)
  l0:In()
end
function export:f_box_MultipleOR_8_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|2033863549", "2033863549", "S15M030_PGT_Manager", "box_MultipleOR_8.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_PGTController_v2_2_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_PGTController_v2_2
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|985332875", "985332875", "S15M030_PGT_Manager", "box_PGTController_v2_2.Started", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PGTController_v2_4_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_PGTController_v2_4
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|155169987", "155169987", "S15M030_PGT_Manager", "box_PGTController_v2_4.Started", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Compare_Boolean_v2_11_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_4
  l0.PGTMissionArea = "9223372047852844055"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|563269342", "563269342", "S15M030_PGT_Manager", "box_Compare_Boolean_v2_11.A_is_True", "box_PGTController_v2_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_1_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PGT_Spider_Beats
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|1659414116"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_11_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|217067264", "217067264", "S15M030_PGT_Manager", "box_Compare_Boolean_v2_1.A_is_False", "box_Compare_Boolean_v2_11.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_1_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_2
  l0.PGTMissionArea = "9223372047852805528"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_PGT_Manager|428541615", "428541615", "S15M030_PGT_Manager", "box_Compare_Boolean_v2_1.A_is_True", "box_PGTController_v2_2.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_MultipleOR_8()
end
function export:Out()
end
_compilerVersion = 4
