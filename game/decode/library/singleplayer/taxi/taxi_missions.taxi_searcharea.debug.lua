export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi_SearchArea"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea"
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.EnteredArea = DummyFunction
  self.ExitedArea = DummyFunction
  self.PlayerID = nil
  self.box_Proximity_Monitor_3 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_3
  l0._graph = self
  l0._name = "box_Proximity_Monitor_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1603502938"
  l0.Enabled = self.f_box_Proximity_Monitor_3_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_3_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_3_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_3_ExitRadius
  self.box_MapPointController_v4_4 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_4
  l0._graph = self
  l0._name = "box_MapPointController_v4_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1917023543"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1959827658"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
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
  self:OnEnter_box_MissionZoneController_v2_2()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1306343195", "1306343195", "Taxi_SearchArea", "Disable", "box_MissionZoneController_v2_2.Disable", self, l0)
  l0:Disable()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|688405313"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1341438830", "1341438830", "Taxi_SearchArea", "Enable", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1857379449", "1857379449", "Taxi_SearchArea", "box_Ordered_Output_8.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|775820742", "775820742", "Taxi_SearchArea", "box_Ordered_Output_8.Out", "Disabled", clone, self)
  self:Disabled()
end
function export:f_box_MissionZoneController_v2_2_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_3()
  l0 = self.box_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1128410427", "1128410427", "Taxi_SearchArea", "box_MissionZoneController_v2_2.Disabled", "box_Proximity_Monitor_3.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionZoneController_v2_2_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_3()
  l0 = self.box_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|220247276", "220247276", "Taxi_SearchArea", "box_MissionZoneController_v2_2.Enabled", "box_Proximity_Monitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_4()
  l0 = self.box_MapPointController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|953509007", "953509007", "Taxi_SearchArea", "box_Ordered_Output_7.Out", "box_MapPointController_v4_4.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1500307072", "1500307072", "Taxi_SearchArea", "box_Ordered_Output_7.Out", "ExitedArea", clone, self)
  self:ExitedArea()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1438491063", "1438491063", "Taxi_SearchArea", "box_Ordered_Output_5.Out", "EnteredArea", clone, self)
  self:EnteredArea()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1654407140", "1654407140", "Taxi_SearchArea", "box_Ordered_Output_5.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerID = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZoneController_v2_2()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1617450691", "1617450691", "Taxi_SearchArea", "box_Get_Player_ID_1.Out", "box_MissionZoneController_v2_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Proximity_Monitor_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|7840293"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_Proximity_Monitor_3
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1785400130", "1785400130", "Taxi_SearchArea", "box_Proximity_Monitor_3.Disabled", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_3_Enabled()
  local l0
  self = self._graph
  l0 = self.box_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|608388549", "608388549", "Taxi_SearchArea", "box_Proximity_Monitor_3.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_Proximity_Monitor_3_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|667963135"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_Proximity_Monitor_3
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|272671810", "272671810", "Taxi_SearchArea", "box_Proximity_Monitor_3.EnterRadius", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_3_ExitRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|383267562"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0 = self.box_Proximity_Monitor_3
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|1588503097", "1588503097", "Taxi_SearchArea", "box_Proximity_Monitor_3.ExitRadius", "box_Ordered_Output_7.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_4()
  l0 = self.box_MultipleOR_6
  l1 = self.box_MapPointController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|267876607", "267876607", "Taxi_SearchArea", "box_MultipleOR_6.Out", "box_MapPointController_v4_4.Hide", l0, l1)
  l1:Hide()
end
function export:OnEnter_box_MissionZoneController_v2_2()
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
  l0._name = "box_MissionZoneController_v2_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\taxi\\Taxi_Missions.domino|@Taxi_SearchArea|296589700"
  l0.Enabled = self.f_box_MissionZoneController_v2_2_Enabled
  l0.Disabled = self.f_box_MissionZoneController_v2_2_Disabled
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_Proximity_Monitor_3()
  local l0
  l0 = self.box_Proximity_Monitor_3
  l0.Entity1 = self.SearchArea
  l0.Entity2 = self.PlayerID
  l0.Radius = self.SearchRadius
  l0.CheckNow = 1
end
function export:OnEnter_box_MapPointController_v4_4()
  local l0
  l0 = self.box_MapPointController_v4_4
  l0.MapPoint = self.MapPoint
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_MultipleOR_6()
end
function export:Enabled()
end
function export:Disabled()
end
function export:EnteredArea()
end
function export:ExitedArea()
end
_compilerVersion = 4
