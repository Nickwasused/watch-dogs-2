export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[3] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_3_Enter
  l0.Leave = self.f_3_Leave
  l0.Use = DummyFunction
  self[7] = cbox:CreateBox("domino/System/OnceOnly_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = DummyFunction
  l0.ResetOut = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
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
  l0.LayerName = "Vehicle_Damage_Regeneration_Test_Mission"
  l0:Load()
end
function export:f_3_Enter()
  local l0
  self = self._graph
  l0 = self[7]
  l0:In(0)
end
function export:f_3_Leave()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Reset()
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[3]
  l0.Trigger = "9223372045767602083"
  l0:Enable()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "phys_vehicle_repair 1"
  l0._graph = self
  l0.Executed = DummyFunction
  l0:Execute()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Vehicle Health Regenerated"
  l0.Duration = 5
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
_compilerVersion = 4
