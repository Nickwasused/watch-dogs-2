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
  self._name = "S13M040_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Activation"
  self.MissionStart = DummyFunction
  self.Collider = nil
  self.PlayerEntity = nil
  self.box_TriggerMonitor_v2_1 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_1
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Activation|1966310556"
  l0.Enabled = self.f_box_TriggerMonitor_v2_1_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_1_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_1_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_1_Use
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
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Activation|1881225460", "1881225460", "S13M040_Activation", "In", "box_TriggerMonitor_v2_1.Enable", self, l0)
  l0:Enable()
end
function export:f_box_Compare_Entity_v2_3_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Activation|2124052307"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Activation|1334209793", "1334209793", "S13M040_Activation", "box_Compare_Entity_v2_3.Equal", "box_Ordered_Output_2.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_1_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Collider = l0.Collider
end
function export:f_box_TriggerMonitor_v2_1_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Collider = l0.Collider
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Activation|2057681012"
  l0.Out = self.f_box_Get_Player_ID_4_Out
  l0 = self.box_TriggerMonitor_v2_1
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Activation|1398251026", "1398251026", "S13M040_Activation", "box_TriggerMonitor_v2_1.Enter", "box_Get_Player_ID_4.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_1_Leave()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Collider = l0.Collider
end
function export:f_box_TriggerMonitor_v2_1_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Collider = l0.Collider
end
function export:f_box_Get_Player_ID_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.Collider
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Activation|1493186335"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_3_Equal
  l0.NotEqual = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Activation|264236272", "264236272", "S13M040_Activation", "box_Get_Player_ID_4.Out", "box_Compare_Entity_v2_3.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Activation|1772680416", "1772680416", "S13M040_Activation", "box_Ordered_Output_2.Out", "box_TriggerMonitor_v2_1.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Activation|147765933", "147765933", "S13M040_Activation", "box_Ordered_Output_2.Out", "MissionStart", clone, self)
  self:MissionStart()
end
function export:OnEnter_box_TriggerMonitor_v2_1()
  local l0
  l0 = self.box_TriggerMonitor_v2_1
  l0.Trigger = "9223372056267721732"
end
function export:MissionStart()
end
_compilerVersion = 4
