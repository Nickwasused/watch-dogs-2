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
  self._name = "Vehicle_Damage_Regeneration_Test_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main"
  self.PlayerEntity = nil
  self.box_TriggerMonitor_v2_3 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_3
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|92003026"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_3_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_3_Leave
  l0.Use = DummyFunction
  self.box_OnceOnly_v2_7 = cbox:CreateBox("domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_7
  l0._graph = self
  l0._name = "box_OnceOnly_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|812542727"
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_box_OnceOnly_v2_7_Out_0
  l0.Out[1] = DummyFunction
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|1268269595"
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
  l0.LayerName = "Vehicle_Damage_Regeneration_Test_Mission"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|755873176", "755873176", "Vehicle_Damage_Regeneration_Test_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_TriggerMonitor_v2_3_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_7()
  l0 = self.box_TriggerMonitor_v2_3
  l1 = self.box_OnceOnly_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|913665032", "913665032", "Vehicle_Damage_Regeneration_Test_Main", "box_TriggerMonitor_v2_3.Enter", "box_OnceOnly_v2_7.In", l0, l1)
  l1:In(0)
end
function export:f_box_TriggerMonitor_v2_3_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_7()
  l0 = self.box_TriggerMonitor_v2_3
  l1 = self.box_OnceOnly_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|693846109", "693846109", "Vehicle_Damage_Regeneration_Test_Main", "box_TriggerMonitor_v2_3.Leave", "box_OnceOnly_v2_7.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_OnceOnly_v2_7_Out_0()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|1956241533"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_OnceOnly_v2_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|1486705089", "1486705089", "Vehicle_Damage_Regeneration_Test_Main", "box_OnceOnly_v2_7.Out", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
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
  l0 = self.box_TriggerMonitor_v2_3
  l0.Trigger = "9223372045767602083"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|1369685683", "1369685683", "Vehicle_Damage_Regeneration_Test_Main", "box_Get_Player_ID_1.Out", "box_TriggerMonitor_v2_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|766929858", "766929858", "Vehicle_Damage_Regeneration_Test_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "phys_vehicle_repair 1"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|1199710180"
  l0.Executed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|579285814", "579285814", "Vehicle_Damage_Regeneration_Test_Main", "box_Ordered_Output_5.Out", "box_DebugExecuteConsole_v2_4.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Vehicle Health Regenerated"
  l0.Duration = 5
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|1205660888"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Main|1170206223", "1170206223", "Vehicle_Damage_Regeneration_Test_Main", "box_Ordered_Output_5.Out", "box_TextToScreen_v2_6.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_OnceOnly_v2_7()
end
_compilerVersion = 4
