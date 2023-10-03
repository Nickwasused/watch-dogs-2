export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.MissionStart = DummyFunction
  self.Collider = nil
  self.PlayerEntity = nil
  self[1] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_1_Enter
  l0.Leave = self.f_1_Leave
  l0.Use = self.f_1_Use
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_3_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_1_Enabled()
  local l0
  self = self._graph
  l0 = self[1]
  self.Collider = l0.Collider
end
function export:f_1_Enter()
  local l0
  self = self._graph
  l0 = self[1]
  self.Collider = l0.Collider
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:In()
end
function export:f_1_Leave()
  local l0
  self = self._graph
  l0 = self[1]
  self.Collider = l0.Collider
end
function export:f_1_Use()
  local l0
  self = self._graph
  l0 = self[1]
  self.Collider = l0.Collider
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.Collider
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_3_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_2_Out_1()
  self = self._graph
  self:MissionStart()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Trigger = "9223372056267721732"
end
function export:MissionStart()
end
_compilerVersion = 4
