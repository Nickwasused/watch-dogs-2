export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ReachGameplayController.lua")
end
function export:Init(cbox)
  local l0
  self.Stopped = DummyFunction
  self.Reached = DummyFunction
  self.Started = DummyFunction
  self.Destination = nil
  self[10] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/ReachGameplayController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = self.f_4_Started
  l0.Stopped = self.f_4_Stopped
  l0.Completed = self.f_4_Completed
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
  self:en_4()
  l0 = self[4]
  l0:Start()
end
function export:Stop()
  local l0
  self:en_4()
  l0 = self[4]
  l0:Stop()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_9_Out_1()
  self = self._graph
  self:Reached()
end
function export:f_4_Completed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:f_4_Started()
  self = self._graph
  self:Started()
end
function export:f_4_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_8_Out_1()
  self = self._graph
  self:Stopped()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.MarkerLocId = self.MarkerLocId
  l0.MarkerEntity = self.MarkerEntity
  l0.Entity = self.Entity
  l0.MissionAreaEntity = self.MissionArea
  l0.AreaRadius = self.Entity_AreaRadius
  l0.AutoSetGPS = self.AutoGPS
end
function export:Stopped()
end
function export:Reached()
end
function export:Started()
end
_compilerVersion = 4
