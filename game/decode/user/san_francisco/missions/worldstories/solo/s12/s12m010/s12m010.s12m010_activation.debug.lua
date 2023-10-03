export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S12M010_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation"
  self.MissionStart = DummyFunction
  self.PlayerEntity = nil
  self.Collider = nil
  self.box_TriggerMonitor_v2_1 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_1
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|557963496"
  l0.Enabled = self.f_box_TriggerMonitor_v2_1_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_1_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_1_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_1_Use
  self.box_RewardController_v3_2 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_2
  l0._graph = self
  l0._name = "box_RewardController_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|1141079741"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Progression_Tag_Monitor_3 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_3
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|1803383632"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_3_HasNOT
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|1367770788", "1367770788", "S12M010_Activation", "In", "box_TriggerMonitor_v2_1.Enable", self, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_1_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Collider = l0.Collider
  l0 = self.box_Progression_Tag_Monitor_3
  l0.ProgressionTag = "ProgressionTag.9223372055970893578"
  l0 = self.box_TriggerMonitor_v2_1
  l1 = self.box_Progression_Tag_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|116209144", "116209144", "S12M010_Activation", "box_TriggerMonitor_v2_1.Enabled", "box_Progression_Tag_Monitor_3.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_TriggerMonitor_v2_1_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Collider = l0.Collider
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|631517610"
  l0.Out = self.f_box_Get_Player_ID_4_Out
  l0 = self.box_TriggerMonitor_v2_1
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|437276585", "437276585", "S12M010_Activation", "box_TriggerMonitor_v2_1.Enter", "box_Get_Player_ID_4.In", l0, l1)
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
  l0._name = "box_Compare_Entity_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|1179069242"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_5_Equal
  l0.NotEqual = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|1546893356", "1546893356", "S12M010_Activation", "box_Get_Player_ID_4.Out", "box_Compare_Entity_v2_5.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Entity_v2_5_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|2022723113"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|1001037609", "1001037609", "S12M010_Activation", "box_Compare_Entity_v2_5.Equal", "box_Ordered_Output_6.In", clone, l0)
  l0:In()
end
function export:f_box_Progression_Tag_Monitor_3_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_2
  l0.ItemDB = "Items.9223372055970893577"
  l0 = self.box_Progression_Tag_Monitor_3
  l1 = self.box_RewardController_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|309580538", "309580538", "S12M010_Activation", "box_Progression_Tag_Monitor_3.HasNOT", "box_RewardController_v3_2.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|1682172178", "1682172178", "S12M010_Activation", "box_Ordered_Output_6.Out", "box_TriggerMonitor_v2_1.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Activation|494753705", "494753705", "S12M010_Activation", "box_Ordered_Output_6.Out", "MissionStart", clone, self)
  self:MissionStart()
end
function export:OnEnter_box_TriggerMonitor_v2_1()
  local l0
  l0 = self.box_TriggerMonitor_v2_1
  l0.Trigger = "9223372057064937402"
end
function export:MissionStart()
end
_compilerVersion = 4
