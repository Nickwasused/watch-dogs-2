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
  self._name = "DPSX_Demo_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main"
  self.PlayerEntity = nil
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "DPSX_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|2087597165", "2087597165", "DPSX_Demo_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_DebugExecuteConsole_v2_43_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "ui_tag_visible_active 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|518563993"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_42_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|479725219", "479725219", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_43.Executed", "box_DebugExecuteConsole_v2_42.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1799172884", "1799172884", "DPSX_Demo_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_DebugExecuteConsole_v2_8_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "cheat_ammo_unlimited 1"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1147121441"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_30_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|702063490", "702063490", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_8.Executed", "box_DebugExecuteConsole_v2_30.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_35_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "inventory_add_currency 3 5207"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|893766360"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_36_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1705001509", "1705001509", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_35.Executed", "box_DebugExecuteConsole_v2_36.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_37_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "force_security_vehicle_spawn_min_radius = 30.f"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1558370733"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_38_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|301947191", "301947191", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_37.Executed", "box_DebugExecuteConsole_v2_38.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_42_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "rc_enable_transition_effect 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|560073107"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_25_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1124942209", "1124942209", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_42.Executed", "box_DebugExecuteConsole_v2_25.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_25_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_LRShadowXYBias 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1923309133"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_19_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1172226314", "1172226314", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_25.Executed", "box_DebugExecuteConsole_v2_19.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "playerVision_player_gamertag_visible 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|2042691734"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_27_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|2081989136", "2081989136", "DPSX_Demo_Main", "box_Get_Player_ID_1.Out", "box_DebugExecuteConsole_v2_27.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_36_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "new_spawner_max_felony_replacement_for_trafficcar 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|397446579"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_37_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1025198647", "1025198647", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_36.Executed", "box_DebugExecuteConsole_v2_37.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_30_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "inventory_unlimited_consumables 1"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1871432703"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_31_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1916986003", "1916986003", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_30.Executed", "box_DebugExecuteConsole_v2_31.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_32_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "ai_detection_threat_combat_rctoy_enable 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1525408547"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_34_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1020714436", "1020714436", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_32.Executed", "box_DebugExecuteConsole_v2_34.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_39_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "civ_update_speed_type_enable 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1086112762"
  l0.Executed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1246412153", "1246412153", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_39.Executed", "box_DebugExecuteConsole_v2_40.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_34_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "disablefelony 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|373573380"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_35_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1206927937", "1206927937", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_34.Executed", "box_DebugExecuteConsole_v2_35.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_38_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "force_security_vehicle_spawn_max_radius = 80.f"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1276524260"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_39_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|534087938", "534087938", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_38.Executed", "box_DebugExecuteConsole_v2_39.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_31_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "s_show_prod_info 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1272697718"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_32_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1574771976", "1574771976", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_31.Executed", "box_DebugExecuteConsole_v2_32.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_19_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "dex_stopallevents"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|320667179"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_8_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|1362950565", "1362950565", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_19.Executed", "box_DebugExecuteConsole_v2_8.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_27_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "env_timescale 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|49937648"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_43_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo.domino|@DPSX_Demo_Main|2011623211", "2011623211", "DPSX_Demo_Main", "box_DebugExecuteConsole_v2_27.Executed", "box_DebugExecuteConsole_v2_43.Execute", clone, l0)
  l0:Execute()
end
_compilerVersion = 4
