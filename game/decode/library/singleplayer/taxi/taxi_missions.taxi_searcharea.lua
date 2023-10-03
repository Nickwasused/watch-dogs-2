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
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.EnteredArea = DummyFunction
  self.ExitedArea = DummyFunction
  self.PlayerID = nil
  self[3] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = self.f_3_Disabled
  l0.EnterRadius = self.f_3_EnterRadius
  l0.ExitRadius = self.f_3_ExitRadius
  self[4] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[4]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
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
  self:en_2()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Disable()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_8_Out_1()
  self = self._graph
  self:Disabled()
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_2_Enabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Show()
end
function export:f_7_Out_1()
  self = self._graph
  self:ExitedArea()
end
function export:f_5_Out_0()
  self = self._graph
  self:EnteredArea()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerID = l0.PlayerID
  self:en_2()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Enable()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_3_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_3_EnterRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_3_ExitRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Hide()
end
function export:en_2()
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
  l0.Enabled = self.f_2_Enabled
  l0.Disabled = self.f_2_Disabled
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Entity1 = self.SearchArea
  l0.Entity2 = self.PlayerID
  l0.Radius = self.SearchRadius
  l0.CheckNow = 1
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.MapPoint = self.MapPoint
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
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
