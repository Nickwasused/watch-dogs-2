export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/TeleportEntity.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/TeleportEntity.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TeleportDone = DummyFunction
  self[3] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = self.f_3_Use
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
  l0 = self[2]
  l0.LayerName = "Test_Raph_Main"
  l0:Load()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_3_Use()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Entity = self.PlayerEntity
  l0.Destination = "9223372046242671749"
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[3]
  l0.Trigger = "9223372046242671571"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  l0:Enable()
end
_compilerVersion = 4
