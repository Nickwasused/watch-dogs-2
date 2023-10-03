export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/IndexedOutput_v2.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerStateController.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("Domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "SearchArea"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea"
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.ExitedArea = DummyFunction
  self.EnteredArea = DummyFunction
  self.PlayerID = nil
  self.WasStopped = 0
  self.ObjectiveAlreadyDisplayed = 0
  self.InsideZone = 0
  self.FirstMessage = 0
  self.HasPreviousObjective = 0
  self.StartedOutsideZone = 0
  self.DisplayingPreviousObjective = 0
  self.DisplayingMessage = 0
  self.box_SetBoolean_v2_55 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_55
  l0._graph = self
  l0._name = "box_SetBoolean_v2_55"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|53081022"
  l0.Out = self.f_box_SetBoolean_v2_55_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_55_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_55_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_55_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_55_SetFromBool
  self.box_MissionModuleBox_v3_48 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_48
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_48"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|58265428"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_48_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_box_MissionModuleBox_v3_48_HideRequested
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_SwitchOutput_v3_36 = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_36
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|223722243"
  l0._DynamicAnchors = {Output = 1}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_36_Output_0
  l0.None = self.f_box_SwitchOutput_v3_36_None
  l0.WasReset = DummyFunction
  self.box_IndexedOutput_V2_63 = cbox:CreateBox("Domino/System/IndexedOutput_v2.lua")
  l0 = self.box_IndexedOutput_V2_63
  l0._graph = self
  l0._name = "box_IndexedOutput_V2_63"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|362923725"
  l0._DynamicAnchors = {Output = 2}
  l0.Output[0] = self.f_box_IndexedOutput_V2_63_Output_0
  l0.Output[1] = self.f_box_IndexedOutput_V2_63_Output_1
  l0.OutOfRange = self.f_box_IndexedOutput_V2_63_OutOfRange
  self.box_Proximity_Monitor_50 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_50
  l0._graph = self
  l0._name = "box_Proximity_Monitor_50"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1069618579"
  l0.Enabled = self.f_box_Proximity_Monitor_50_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_50_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_50_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_50_ExitRadius
  self.box_SetBoolean_v2_35 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_35
  l0._graph = self
  l0._name = "box_SetBoolean_v2_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1408955508"
  l0.Out = self.f_box_SetBoolean_v2_35_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_35_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_35_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_35_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_35_SetFromBool
  self.box_MapPointController_v3_38 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_38
  l0._graph = self
  l0._name = "box_MapPointController_v3_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1534741929"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SetBoolean_v2_33 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_33
  l0._graph = self
  l0._name = "box_SetBoolean_v2_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1770059325"
  l0.Out = self.f_box_SetBoolean_v2_33_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_33_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_33_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_33_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_33_SetFromBool
  self.box_MissionModuleBox_v3_59 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_59
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_59"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1872128651"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_59_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_box_MissionModuleBox_v3_59_HideRequested
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_39 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_39
  l0._graph = self
  l0._name = "box_SetBoolean_v2_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1874403385"
  l0.Out = self.f_box_SetBoolean_v2_39_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_39_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_39_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_39_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_39_SetFromBool
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_58"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1138132834"
  l0.Out = self.f_box_Get_Player_ID_58_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1636673783", "1636673783", "SearchArea", "Start", "box_Get_Player_ID_58.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = self.box_SetBoolean_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1063607447", "1063607447", "SearchArea", "Stop", "box_SetBoolean_v2_33.True", self, l0)
  l0:True()
end
function export:f_box_Player_State_Controller_52_MaxSpeedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_64"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1092222739"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_64_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_64_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|60489142", "60489142", "SearchArea", "box_Player_State_Controller_52.MaxSpeedReset", "box_Ordered_Output_64.In", clone, l0)
  l0:In()
end
function export:f_box_Player_State_Controller_52_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1292264839"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1299809638", "1299809638", "SearchArea", "box_Player_State_Controller_52.MaxSpeedSet", "box_Ordered_Output_41.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_55_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_55
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_55_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_55
  self.WasStopped = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = self.PreviousObjectiveText
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_47"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|858458220"
  l0.Is_nil = self.f_box_Test_if_Nil_47_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_47_Is_not_nil
  l0 = self.box_SetBoolean_v2_55
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1341910750", "1341910750", "SearchArea", "box_SetBoolean_v2_55.SetFalse", "box_Test_if_Nil_47.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_55_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_55
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_55_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_55
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_55_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_55
  self.WasStopped = l0.Target
end
function export:f_box_MissionModuleBox_v3_48_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_54"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1875016780"
  l0.Out = self.f_box_SetInteger_v2_54_Out
  l0 = self.box_MissionModuleBox_v3_48
  l1 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|661182331", "661182331", "SearchArea", "box_MissionModuleBox_v3_48.DisplayRequested", "box_SetInteger_v2_54.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_MissionModuleBox_v3_48_HideRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetInteger_v2_62()
  l0 = self.box_MissionModuleBox_v3_48
  l1 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1775359876", "1775359876", "SearchArea", "box_MissionModuleBox_v3_48.HideRequested", "box_SetInteger_v2_62.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Compare_Integers_v2_45_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Compare_Boolean_v2_32()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|2046284649", "2046284649", "SearchArea", "box_Compare_Integers_v2_45.A_eq_B", "box_Compare_Boolean_v2_32.In", clone, l0)
  l0:In()
end
function export:f_box_SwitchOutput_v3_36_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_35()
  l0 = self.box_SwitchOutput_v3_36
  l1 = self.box_SetBoolean_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1030228563", "1030228563", "SearchArea", "box_SwitchOutput_v3_36.None", "box_SetBoolean_v2_35.False", l0, l1)
  l1:False()
end
function export:f_box_SwitchOutput_v3_36_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_35()
  l0 = self.box_SwitchOutput_v3_36
  l1 = self.box_SetBoolean_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|421733841", "421733841", "SearchArea", "box_SwitchOutput_v3_36.Output", "box_SetBoolean_v2_35.True", l0, l1)
  l1:True()
end
function export:f_box_IndexedOutput_V2_63_OutOfRange()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v3_59()
  l0 = self.box_IndexedOutput_V2_63
  l1 = self.box_MissionModuleBox_v3_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1377406963", "1377406963", "SearchArea", "box_IndexedOutput_V2_63.OutOfRange", "box_MissionModuleBox_v3_59.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_IndexedOutput_V2_63_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v3_48()
  l0 = self.box_IndexedOutput_V2_63
  l1 = self.box_MissionModuleBox_v3_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|789684842", "789684842", "SearchArea", "box_IndexedOutput_V2_63.Output", "box_MissionModuleBox_v3_48.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_IndexedOutput_V2_63_Output_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v3_59()
  l0 = self.box_IndexedOutput_V2_63
  l1 = self.box_MissionModuleBox_v3_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|756282598", "756282598", "SearchArea", "box_IndexedOutput_V2_63.Output", "box_MissionModuleBox_v3_59.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionZoneController_v2_57_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_50()
  l0 = self.box_Proximity_Monitor_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|695706151", "695706151", "SearchArea", "box_MissionZoneController_v2_57.Disabled", "box_Proximity_Monitor_50.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionZoneController_v2_57_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_50()
  l0 = self.box_Proximity_Monitor_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|213789970", "213789970", "SearchArea", "box_MissionZoneController_v2_57.Enabled", "box_Proximity_Monitor_50.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_32_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Compare_Boolean_v2_31()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|449644408", "449644408", "SearchArea", "box_Compare_Boolean_v2_32.A_is_False", "box_Compare_Boolean_v2_31.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_32_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FirstMessage
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_65"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1336359875"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_65_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_65_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|2093229664", "2093229664", "SearchArea", "box_Compare_Boolean_v2_32.A_is_True", "box_Compare_Boolean_v2_65.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_31_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionModuleBox_v3_59()
  l0 = self.box_MissionModuleBox_v3_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1082319425", "1082319425", "SearchArea", "box_Compare_Boolean_v2_31.A_is_False", "box_MissionModuleBox_v3_59.Display", clone, l0)
  l0:Display()
end
function export:f_box_Compare_Boolean_v2_31_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionModuleBox_v3_59()
  l0 = self.box_MissionModuleBox_v3_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1902483884", "1902483884", "SearchArea", "box_Compare_Boolean_v2_31.A_is_True", "box_MissionModuleBox_v3_59.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Test_if_Nil_47_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZoneController_v2_57()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|286619887", "286619887", "SearchArea", "box_Test_if_Nil_47.Is_nil", "box_MissionZoneController_v2_57.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Test_if_Nil_47_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|625328791", "625328791", "SearchArea", "box_Test_if_Nil_47.Is_not_nil", "box_SetBoolean_v2_39.True", clone, l0)
  l0:True()
end
function export:f_box_Proximity_Monitor_50_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_52()
  l0 = self.box_Proximity_Monitor_50
  l1 = Boxes[PathID("Domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|2034719961", "2034719961", "SearchArea", "box_Proximity_Monitor_50.Disabled", "box_Player_State_Controller_52.ResetMaxSpeed", l0, l1)
  l1:ResetMaxSpeed()
  self:OnEnter_box_MapPointController_v3_38()
  l0 = self.box_Proximity_Monitor_50
  l1 = self.box_MapPointController_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|2060061075", "2060061075", "SearchArea", "box_Proximity_Monitor_50.Disabled", "box_MapPointController_v3_38.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Proximity_Monitor_50_Enabled()
  local l0
  self = self._graph
  l0 = self.box_Proximity_Monitor_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|314678456", "314678456", "SearchArea", "box_Proximity_Monitor_50.Enabled", "Started", l0, self)
  self:Started()
end
function export:f_box_Proximity_Monitor_50_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_52()
  l0 = self.box_Proximity_Monitor_50
  l1 = Boxes[PathID("Domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|166690197", "166690197", "SearchArea", "box_Proximity_Monitor_50.EnterRadius", "box_Player_State_Controller_52.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
  self:OnEnter_box_MapPointController_v3_38()
  l0 = self.box_Proximity_Monitor_50
  l1 = self.box_MapPointController_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|467262981", "467262981", "SearchArea", "box_Proximity_Monitor_50.EnterRadius", "box_MapPointController_v3_38.Hide", l0, l1)
  l1:Hide()
  l0 = self.box_Proximity_Monitor_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1452814066", "1452814066", "SearchArea", "box_Proximity_Monitor_50.EnterRadius", "EnteredArea", l0, self)
  self:EnteredArea()
end
function export:f_box_Proximity_Monitor_50_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_38()
  l0 = self.box_Proximity_Monitor_50
  l1 = self.box_MapPointController_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|547379750", "547379750", "SearchArea", "box_Proximity_Monitor_50.ExitRadius", "box_MapPointController_v3_38.Show", l0, l1)
  l1:Show()
  l0 = self.box_Proximity_Monitor_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|789658811", "789658811", "SearchArea", "box_Proximity_Monitor_50.ExitRadius", "ExitedArea", l0, self)
  self:ExitedArea()
  self:OnEnter_box_Player_State_Controller_52()
  l1 = Boxes[PathID("Domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1732984601", "1732984601", "SearchArea", "box_Proximity_Monitor_50.ExitRadius", "box_Player_State_Controller_52.ResetMaxSpeed", l0, l1)
  l1:ResetMaxSpeed()
end
function export:f_box_Compare_Boolean_v2_40_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1287633207", "1287633207", "SearchArea", "box_Compare_Boolean_v2_40.A_is_True", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_Ordered_Output_64_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SwitchOutput_v3_36()
  l0 = self.box_SwitchOutput_v3_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|2114830100", "2114830100", "SearchArea", "box_Ordered_Output_64.Out", "box_SwitchOutput_v3_36.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_64_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FirstMessage
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_66"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|2007727637"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_66_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_66_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|144742234", "144742234", "SearchArea", "box_Ordered_Output_64.Out", "box_Compare_Boolean_v2_66.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerID = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|419328799", "419328799", "SearchArea", "box_Get_Player_ID_58.Out", "box_SetBoolean_v2_55.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SwitchOutput_v3_36()
  l0 = self.box_SwitchOutput_v3_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|960600800", "960600800", "SearchArea", "box_Ordered_Output_41.Out", "box_SwitchOutput_v3_36.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.DisplayingMessage
  l0.B = 0
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_45"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|104326402"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_45_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|313077844", "313077844", "SearchArea", "box_Ordered_Output_41.Out", "box_Compare_Integers_v2_45.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_65_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Compare_Boolean_v2_31()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|932618842", "932618842", "SearchArea", "box_Compare_Boolean_v2_65.A_is_False", "box_Compare_Boolean_v2_31.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_65_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.WasStopped
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1361767642"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_34_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_34_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1289549261", "1289549261", "SearchArea", "box_Compare_Boolean_v2_65.A_is_True", "box_Compare_Boolean_v2_34.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_34_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionModuleBox_v3_48()
  l0 = self.box_MissionModuleBox_v3_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1393529487", "1393529487", "SearchArea", "box_Compare_Boolean_v2_34.A_is_False", "box_MissionModuleBox_v3_48.Display", clone, l0)
  l0:Display()
end
function export:f_box_Compare_Boolean_v2_34_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionModuleBox_v3_48()
  l0 = self.box_MissionModuleBox_v3_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|132936192", "132936192", "SearchArea", "box_Compare_Boolean_v2_34.A_is_True", "box_MissionModuleBox_v3_48.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_SetBoolean_v2_35_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.FirstMessage = l0.Target
end
function export:f_box_SetBoolean_v2_35_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.FirstMessage = l0.Target
end
function export:f_box_SetBoolean_v2_35_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.FirstMessage = l0.Target
end
function export:f_box_SetBoolean_v2_35_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.FirstMessage = l0.Target
end
function export:f_box_SetBoolean_v2_35_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.FirstMessage = l0.Target
end
function export:f_box_SetInteger_v2_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.DisplayingMessage = l0.Target
end
function export:f_box_SetInteger_v2_62_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.DisplayingMessage = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.WasStopped
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1091594460"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_40_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1240025702", "1240025702", "SearchArea", "box_SetInteger_v2_62.Out", "box_Compare_Boolean_v2_40.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_33_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_33_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_33_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_33_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.WasStopped = l0.Target
  self:OnEnter_box_MissionZoneController_v2_57()
  l1 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|622034864", "622034864", "SearchArea", "box_SetBoolean_v2_33.SetTrue", "box_MissionZoneController_v2_57.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_33_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.WasStopped = l0.Target
end
function export:f_box_MissionModuleBox_v3_59_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 2
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1454107828"
  l0.Out = self.f_box_SetInteger_v2_30_Out
  l0 = self.box_MissionModuleBox_v3_59
  l1 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|14750808", "14750808", "SearchArea", "box_MissionModuleBox_v3_59.DisplayRequested", "box_SetInteger_v2_30.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_MissionModuleBox_v3_59_HideRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetInteger_v2_62()
  l0 = self.box_MissionModuleBox_v3_59
  l1 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1195323705", "1195323705", "SearchArea", "box_MissionModuleBox_v3_59.HideRequested", "box_SetInteger_v2_62.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_SetBoolean_v2_39_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.HasPreviousObjective = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.HasPreviousObjective = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.HasPreviousObjective = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.HasPreviousObjective = l0.Target
  self:OnEnter_box_MissionZoneController_v2_57()
  l1 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1746005649", "1746005649", "SearchArea", "box_SetBoolean_v2_39.SetTrue", "box_MissionZoneController_v2_57.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_39_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.HasPreviousObjective = l0.Target
end
function export:f_box_SetInteger_v2_54_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.DisplayingMessage = l0.Target
end
function export:f_box_Compare_Boolean_v2_66_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IndexedOutput_V2_63
  l0.Index = self.DisplayingMessage
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1079943601", "1079943601", "SearchArea", "box_Compare_Boolean_v2_66.A_is_False", "box_IndexedOutput_V2_63.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_66_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Compare_Boolean_v2_32()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|478539812", "478539812", "SearchArea", "box_Compare_Boolean_v2_66.A_is_True", "box_Compare_Boolean_v2_32.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_Player_State_Controller_52()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Jog"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_52"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|24715508"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_52_MaxSpeedSet
  l0.MaxSpeedReset = self.f_box_Player_State_Controller_52_MaxSpeedReset
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.HandsInPocketsEnabled = DummyFunction
  l0.HandsInPocketsDisabled = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MissionModuleBox_v3_48()
  local l0
  l0 = self.box_MissionModuleBox_v3_48
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = self.PreviousObjectiveText
  l0.OasisID_2 = self.MessageText
  l0.Duration = -1
end
function export:OnEnter_box_SwitchOutput_v3_36()
end
function export:OnEnter_box_MissionZoneController_v2_57()
  local l0
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.SearchArea
  l0.Red = 0.2
  l0.Green = 0.78
  l0.Blue = 0.96
  l0.Alpha = 1
  l0.Radius = self.SearchRadius
  l0.DrawType = "Inside"
  l0.ShapeType = "CMissionCircleDescriptor"
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0._name = "box_MissionZoneController_v2_57"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|481493492"
  l0.Enabled = self.f_box_MissionZoneController_v2_57_Enabled
  l0.Disabled = self.f_box_MissionZoneController_v2_57_Disabled
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_Compare_Boolean_v2_32()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HasPreviousObjective
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|758761844"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_32_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_32_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
end
function export:OnEnter_box_Compare_Boolean_v2_31()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.WasStopped
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|807098554"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_31_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_31_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
end
function export:OnEnter_box_Proximity_Monitor_50()
  local l0
  l0 = self.box_Proximity_Monitor_50
  l0.Entity1 = self.SearchArea
  l0.Entity2 = self.PlayerID
  l0.Radius = self.SearchRadius
  l0.CheckNow = 1
end
function export:OnEnter_box_SetBoolean_v2_35()
end
function export:OnEnter_box_MapPointController_v3_38()
  local l0
  l0 = self.box_MapPointController_v3_38
  l0.MapPoint = self.MapPoint
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_SetInteger_v2_62()
  local l0
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_62"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@SearchArea|1563323547"
  l0.Out = self.f_box_SetInteger_v2_62_Out
end
function export:OnEnter_box_MissionModuleBox_v3_59()
  local l0
  l0 = self.box_MissionModuleBox_v3_59
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = self.MessageText
  l0.Duration = -1
end
function export:Started()
end
function export:Stopped()
end
function export:ExitedArea()
end
function export:EnteredArea()
end
_compilerVersion = 4
