export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("Domino/System/FormatString.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/TextToScreen_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Player_Count_Monitor"
  self._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor"
  self.Fetched = DummyFunction
  self.Enabled = DummyFunction
  self.PlayerCountChanged = DummyFunction
  self.newPlayerCount = " "
  self.PlayerCountInternal = 0
  self.newPlayerCountInt = 0
  self.box_ConsoleCommand_v2_1 = cbox:CreateBox("Domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_1
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1345757740"
  l0.Enabled = self.f_box_ConsoleCommand_v2_1_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_1_Executed
  self.box_ConsoleCommand_v2_3 = cbox:CreateBox("Domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_3
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1851455406"
  l0.Enabled = self.f_box_ConsoleCommand_v2_3_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_3_Executed
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Enable()
  local l0
  l0 = self.box_ConsoleCommand_v2_1
  l0.Command = "SetPlayerCountMP"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|769008398", "769008398", "Player_Count_Monitor", "Enable", "box_ConsoleCommand_v2_1.Enable", self, l0)
  l0:Enable()
end
function export:Fetch()
  local l0
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = self.PlayerCountInternal
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1059952059"
  l0.Out = self.f_box_SetInteger_v2_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|2101627189", "2101627189", "Player_Count_Monitor", "Fetch", "box_SetInteger_v2_7.FromInteger", self, l0)
  l0:FromInteger()
end
function export:f_box_SetInteger_v2_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.PlayerCountInternal = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = self.PlayerCountInternal
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1884890836"
  l0.Out = self.f_box_SetInteger_v2_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1185328816", "1185328816", "Player_Count_Monitor", "box_SetInteger_v2_11.Out", "box_SetInteger_v2_6.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_Format_String_5_Formatted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FormatString.lua")]
  self._sld_Target_box_Format_String_5 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = self._sld_Target_box_Format_String_5
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|2144507054"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1832238739", "1832238739", "Player_Count_Monitor", "box_Format_String_5.Formatted", "box_TextToScreen_v2_4.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_12_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1702070644"
  l0.Out = self.f_box_Simple_Node_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|552048100", "552048100", "Player_Count_Monitor", "box_Test_if_Nil_12.Is_nil", "box_Simple_Node_14.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_12_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.newPlayerCountInt
  l0.B = 0
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1573608266"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_8_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_8_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1972750016", "1972750016", "Player_Count_Monitor", "box_Test_if_Nil_12.Is_not_nil", "box_Compare_Integers_v2_8.In", clone, l0)
  l0:In()
end
function export:f_box_SetInteger_v2_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.PlayerCount = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1835079231", "1835079231", "Player_Count_Monitor", "box_SetInteger_v2_7.Out", "Fetched", clone, self)
  self:Fetched()
end
function export:f_box_ConsoleCommand_v2_1_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_3
  l0.Command = "GetPlayerCountMP"
  l0 = self.box_ConsoleCommand_v2_1
  l1 = self.box_ConsoleCommand_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|75558196", "75558196", "Player_Count_Monitor", "box_ConsoleCommand_v2_1.Enabled", "box_ConsoleCommand_v2_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ConsoleCommand_v2_1_Executed()
  local l0, l1
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_1
  self.newPlayerCount = l0.Parameter
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = nil
  l0.String = self.newPlayerCount
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1399506535"
  l0.Out = self.f_box_SetInteger_v2_2_Out
  l0 = self.box_ConsoleCommand_v2_1
  l1 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|82804392", "82804392", "Player_Count_Monitor", "box_ConsoleCommand_v2_1.Executed", "box_SetInteger_v2_2.FromString", l0, l1)
  l1:FromString()
end
function export:f_box_SetInteger_v2_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.newPlayerCountInt = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = self.newPlayerCountInt
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.List = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|889050823"
  l0.Is_nil = self.f_box_Test_if_Nil_12_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_12_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1484801155", "1484801155", "Player_Count_Monitor", "box_SetInteger_v2_2.Out", "box_Test_if_Nil_12.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_8_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = self.newPlayerCountInt
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|315795089"
  l0.Out = self.f_box_SetInteger_v2_11_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|1049542836", "1049542836", "Player_Count_Monitor", "box_Compare_Integers_v2_8.A_ge_B", "box_SetInteger_v2_11.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_Compare_Integers_v2_8_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TextToScreen_v2_10()
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|714279857", "714279857", "Player_Count_Monitor", "box_Compare_Integers_v2_8.A_lt_B", "box_TextToScreen_v2_10.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TextToScreen_v2_10()
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|2043517000", "2043517000", "Player_Count_Monitor", "box_Simple_Node_14.Out", "box_TextToScreen_v2_10.In", clone, l0)
  l0:In()
end
function export:f_box_ConsoleCommand_v2_3_Enabled()
  local l0
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|675619040", "675619040", "Player_Count_Monitor", "box_ConsoleCommand_v2_3.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_ConsoleCommand_v2_3_Executed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FormatString.lua")]
  l0.FormatString = "There are currently %d players."
  l0.String[0] = nil
  l0.String[1] = nil
  l0.Float[0] = nil
  l0.Float[1] = nil
  l0.Integer[0] = self.PlayerCountInternal
  l0.Integer[1] = nil
  l0.Boolean[0] = nil
  l0.Boolean[1] = nil
  l0._graph = self
  l0._name = "box_Format_String_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|805646233"
  l0._DynamicAnchors = {
    String = 2,
    Float = 2,
    Integer = 2,
    Boolean = 2
  }
  l0.Formatted = self.f_box_Format_String_5_Formatted
  l0 = self.box_ConsoleCommand_v2_3
  l1 = Boxes[PathID("Domino/System/FormatString.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|967412176", "967412176", "Player_Count_Monitor", "box_ConsoleCommand_v2_3.Executed", "box_Format_String_5.Format", l0, l1)
  l1:Format()
end
function export:f_box_SetInteger_v2_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.PlayerCount = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|2099642230", "2099642230", "Player_Count_Monitor", "box_SetInteger_v2_6.Out", "PlayerCountChanged", clone, self)
  self:PlayerCountChanged()
end
function export:OnEnter_box_TextToScreen_v2_10()
  local l0
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "ERROR!   Usage:   domino_SetPlayerCountMP <number of players>"
  l0.Duration = 10
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\mp\\PlayerCount\\PlayerCount.domino|@Player_Count_Monitor|511571894"
  l0.Out = DummyFunction
end
function export:Fetched()
end
function export:Enabled()
end
function export:PlayerCountChanged()
end
_compilerVersion = 4
