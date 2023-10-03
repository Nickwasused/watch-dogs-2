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
  self._name = "DPSX_Demo_Player2_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main"
  self.PlayerEntity = nil
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|221967371"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|1104553538", "1104553538", "DPSX_Demo_Player2_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|794668992", "794668992", "DPSX_Demo_Player2_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_DebugExecuteConsole_v2_4_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "inventory_add 9223372048779332906 1 "
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|1192205145"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_6_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|1631713663", "1631713663", "DPSX_Demo_Player2_Main", "box_DebugExecuteConsole_v2_4.Executed", "box_DebugExecuteConsole_v2_6.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_3_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "player_invincible 1"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|465073233"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_4_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|492378712", "492378712", "DPSX_Demo_Player2_Main", "box_DebugExecuteConsole_v2_3.Executed", "box_DebugExecuteConsole_v2_4.Execute", clone, l0)
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
  l0.Command = "cheat_ammo_unlimited 1"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|2124260275"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_5_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|1540244017", "1540244017", "DPSX_Demo_Player2_Main", "box_Get_Player_ID_1.Out", "box_DebugExecuteConsole_v2_5.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_6_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "inventory_add_currency 3 10564"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|1723138653"
  l0.Executed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|1815074789", "1815074789", "DPSX_Demo_Player2_Main", "box_DebugExecuteConsole_v2_6.Executed", "box_DebugExecuteConsole_v2_7.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_5_Executed()
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
  l0._name = "box_DebugExecuteConsole_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|769935778"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_3_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\DPSX\\DPSX_Demo_Player2.domino|@DPSX_Demo_Player2_Main|258110804", "258110804", "DPSX_Demo_Player2_Main", "box_DebugExecuteConsole_v2_5.Executed", "box_DebugExecuteConsole_v2_3.Execute", clone, l0)
  l0:Execute()
end
_compilerVersion = 4
