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
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.Entered = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = self.f_1_Disabled
  l0.Enter = self.f_1_Enter
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
  self:en_2()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Disable()
end
function export:Enable()
  local l0
  self:en_2()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:UpdateProperties()
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_2_Enabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_2_PropertiesUpdated()
  local l0
  self = self._graph
  self:en_2()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Enable()
end
function export:f_1_Disabled()
  self = self._graph
  self:Disabled()
end
function export:f_1_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_1_Enter()
  self = self._graph
  self:Entered()
end
function export:en_2()
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
  l0.Enabled = self.f_2_Enabled
  l0.Disabled = self.f_2_Disabled
  l0.PropertiesUpdated = self.f_2_PropertiesUpdated
  l0.Out = DummyFunction
end
function export:en_1()
  local l0
  l0 = self[1]
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
