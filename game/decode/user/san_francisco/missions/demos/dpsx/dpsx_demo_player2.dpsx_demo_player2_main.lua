export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
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
  l0.LayerName = "DPSX_Main"
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
function export:f_4_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "inventory_add 9223372048779332906 1 "
  l0._graph = self
  l0.Executed = self.f_6_Executed
  l0:Execute()
end
function export:f_3_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "player_invincible 1"
  l0._graph = self
  l0.Executed = self.f_4_Executed
  l0:Execute()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "cheat_ammo_unlimited 1"
  l0._graph = self
  l0.Executed = self.f_5_Executed
  l0:Execute()
end
function export:f_6_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "inventory_add_currency 3 10564"
  l0._graph = self
  l0.Executed = DummyFunction
  l0:Execute()
end
function export:f_5_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "inventory_unlimited_consumables 1"
  l0._graph = self
  l0.Executed = self.f_3_Executed
  l0:Execute()
end
_compilerVersion = 4
