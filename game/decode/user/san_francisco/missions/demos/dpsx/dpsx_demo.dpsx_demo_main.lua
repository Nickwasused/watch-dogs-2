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
function export:f_43_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "ui_tag_visible_active 0"
  l0._graph = self
  l0.Executed = self.f_42_Executed
  l0:Execute()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_8_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "cheat_ammo_unlimited 1"
  l0._graph = self
  l0.Executed = self.f_30_Executed
  l0:Execute()
end
function export:f_35_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "inventory_add_currency 3 5207"
  l0._graph = self
  l0.Executed = self.f_36_Executed
  l0:Execute()
end
function export:f_37_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "force_security_vehicle_spawn_min_radius = 30.f"
  l0._graph = self
  l0.Executed = self.f_38_Executed
  l0:Execute()
end
function export:f_42_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "rc_enable_transition_effect 0"
  l0._graph = self
  l0.Executed = self.f_25_Executed
  l0:Execute()
end
function export:f_25_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_LRShadowXYBias 0"
  l0._graph = self
  l0.Executed = self.f_19_Executed
  l0:Execute()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "playerVision_player_gamertag_visible 0"
  l0._graph = self
  l0.Executed = self.f_27_Executed
  l0:Execute()
end
function export:f_36_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "new_spawner_max_felony_replacement_for_trafficcar 0"
  l0._graph = self
  l0.Executed = self.f_37_Executed
  l0:Execute()
end
function export:f_30_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "inventory_unlimited_consumables 1"
  l0._graph = self
  l0.Executed = self.f_31_Executed
  l0:Execute()
end
function export:f_32_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "ai_detection_threat_combat_rctoy_enable 0"
  l0._graph = self
  l0.Executed = self.f_34_Executed
  l0:Execute()
end
function export:f_39_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "civ_update_speed_type_enable 0"
  l0._graph = self
  l0.Executed = DummyFunction
  l0:Execute()
end
function export:f_34_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "disablefelony 0"
  l0._graph = self
  l0.Executed = self.f_35_Executed
  l0:Execute()
end
function export:f_38_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "force_security_vehicle_spawn_max_radius = 80.f"
  l0._graph = self
  l0.Executed = self.f_39_Executed
  l0:Execute()
end
function export:f_31_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "s_show_prod_info 0"
  l0._graph = self
  l0.Executed = self.f_32_Executed
  l0:Execute()
end
function export:f_19_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "dex_stopallevents"
  l0._graph = self
  l0.Executed = self.f_8_Executed
  l0:Execute()
end
function export:f_27_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "env_timescale 0"
  l0._graph = self
  l0.Executed = self.f_43_Executed
  l0:Execute()
end
_compilerVersion = 4
