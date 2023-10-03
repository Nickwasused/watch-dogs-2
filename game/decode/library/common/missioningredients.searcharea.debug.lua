export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "SearchArea"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@SearchArea"
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.Entered = DummyFunction
  self.box_TriggerMonitor_v2_1 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_1
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@SearchArea|792569084"
  l0.Enabled = self.f_box_TriggerMonitor_v2_1_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_1_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_1_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@SearchArea|121167332", "121167332", "SearchArea", "Disable", "box_MissionZoneController_v2_2.Disable", self, l0)
  l0:Disable()
end
function export:Enable()
  local l0
  self:OnEnter_box_MissionZoneController_v2_2()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@SearchArea|2001296310", "2001296310", "SearchArea", "Enable", "box_MissionZoneController_v2_2.UpdateProperties", self, l0)
  l0:UpdateProperties()
end
function export:f_box_MissionZoneController_v2_2_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@SearchArea|1678206955", "1678206955", "SearchArea", "box_MissionZoneController_v2_2.Disabled", "box_TriggerMonitor_v2_1.Disable", clone, l0)
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
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@SearchArea|273139050", "273139050", "SearchArea", "box_MissionZoneController_v2_2.Enabled", "box_TriggerMonitor_v2_1.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionZoneController_v2_2_PropertiesUpdated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZoneController_v2_2()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@SearchArea|956338501", "956338501", "SearchArea", "box_MissionZoneController_v2_2.PropertiesUpdated", "box_MissionZoneController_v2_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_1_Disabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@SearchArea|1369919217", "1369919217", "SearchArea", "box_TriggerMonitor_v2_1.Disabled", "Disabled", l0, self)
  self:Disabled()
end
function export:f_box_TriggerMonitor_v2_1_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@SearchArea|1061092924", "1061092924", "SearchArea", "box_TriggerMonitor_v2_1.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_TriggerMonitor_v2_1_Enter()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@SearchArea|114343662", "114343662", "SearchArea", "box_TriggerMonitor_v2_1.Enter", "Entered", l0, self)
  self:Entered()
end
function export:OnEnter_box_MissionZoneController_v2_2()
  local l0
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionArea
  l0.Red = 0.196
  l0.Green = 0.784
  l0.Blue = 0.957
  l0.Alpha = 1
  l0.Radius = nil
  l0.DrawType = "Inside"
  l0.ShapeType = nil
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0._name = "box_MissionZoneController_v2_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@SearchArea|15949828"
  l0.Enabled = self.f_box_MissionZoneController_v2_2_Enabled
  l0.Disabled = self.f_box_MissionZoneController_v2_2_Disabled
  l0.PropertiesUpdated = self.f_box_MissionZoneController_v2_2_PropertiesUpdated
  l0.Out = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_1()
  local l0
  l0 = self.box_TriggerMonitor_v2_1
  l0.Trigger = self.MissionArea
  l0.CheckNow = 1
end
function export:Enabled()
end
function export:Disabled()
end
function export:Entered()
end
_compilerVersion = 4
