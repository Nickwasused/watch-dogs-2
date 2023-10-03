export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AISquadRelationshipController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S11M040_DogThreatMonitor"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor"
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.Cage_01 = nil
  self.Cage_01_Trigger = nil
  self.Cage_01_Collider = nil
  self.Cage_01_Boolean = 0
  self.box_Hackable_Monitor_5 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_5
  l0._graph = self
  l0._name = "box_Hackable_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|309324049"
  l0.Enabled = self.f_box_Hackable_Monitor_5_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_5_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_5_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_SetBoolean_v2_6 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_6
  l0._graph = self
  l0._name = "box_SetBoolean_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|397005903"
  l0.Out = self.f_box_SetBoolean_v2_6_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_6_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_6_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_6_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_6_SetFromBool
  self.box_TriggerMonitor_v2_1 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_1
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|482478480"
  l0.Enabled = self.f_box_TriggerMonitor_v2_1_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_1_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_1_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_1_Use
  self.box_AISquadRelationshipController_8 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_8
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|634174664"
  l0.RelationshipSet = DummyFunction
  l0.RelationshipReset = self.f_box_AISquadRelationshipController_8_RelationshipReset
  self.box_AISquadRelationshipController_2 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_2
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|834054076"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_2_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_TriggerMonitor_v2_10 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_10
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|1280443434"
  l0.Enabled = self.f_box_TriggerMonitor_v2_10_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_10_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_10_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_10_Use
  self.box_SetBoolean_v2_11 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_11
  l0._graph = self
  l0._name = "box_SetBoolean_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|1441409395"
  l0.Out = self.f_box_SetBoolean_v2_11_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_11_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_11_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_11_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_11_SetFromBool
  self.box_SetBoolean_v2_9 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_9
  l0._graph = self
  l0._name = "box_SetBoolean_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|1907095837"
  l0.Out = self.f_box_SetBoolean_v2_9_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_9_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_9_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_9_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_9_SetFromBool
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  self:OnEnter_box_Hackable_Monitor_5()
  l0 = self.box_Hackable_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|1273018234", "1273018234", "S11M040_DogThreatMonitor", "Disable", "box_Hackable_Monitor_5.Disable", self, l0)
  l0:Disable()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Cage
  l0._graph = self
  l0._name = "box_Set_Entity_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|544376461"
  l0.Out = self.f_box_Set_Entity_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|2145858267", "2145858267", "S11M040_DogThreatMonitor", "Enable", "box_Set_Entity_4.FromEntity", self, l0)
  l0:FromEntity()
end
function export:f_box_Hackable_Monitor_5_Disabled()
  local l0
  self = self._graph
  l0 = self.box_Hackable_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|1752807110", "1752807110", "S11M040_DogThreatMonitor", "box_Hackable_Monitor_5.Disabled", "Disabled", l0, self)
  self:Disabled()
end
function export:f_box_Hackable_Monitor_5_Enabled()
  local l0
  self = self._graph
  l0 = self.box_Hackable_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|362460515", "362460515", "S11M040_DogThreatMonitor", "box_Hackable_Monitor_5.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_Hackable_Monitor_5_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Cage_01_Boolean
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|539348290"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_7_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_7_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Hackable_Monitor_5
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|1658122925", "1658122925", "S11M040_DogThreatMonitor", "box_Hackable_Monitor_5.HackSuccess", "box_Compare_Boolean_v2_7.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.Cage_01_Boolean = l0.Target
  self:OnEnter_box_TriggerMonitor_v2_1()
  l1 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|350875937", "350875937", "S11M040_DogThreatMonitor", "box_SetBoolean_v2_6.Out", "box_TriggerMonitor_v2_1.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_6_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.Cage_01_Boolean = l0.Target
end
function export:f_box_SetBoolean_v2_6_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.Cage_01_Boolean = l0.Target
end
function export:f_box_SetBoolean_v2_6_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.Cage_01_Boolean = l0.Target
end
function export:f_box_SetBoolean_v2_6_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.Cage_01_Boolean = l0.Target
end
function export:f_box_TriggerMonitor_v2_1_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Cage_01_Collider = l0.Collider
end
function export:f_box_TriggerMonitor_v2_1_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Cage_01_Collider = l0.Collider
  l0 = self.box_AISquadRelationshipController_8
  l0.Target = self.Cage_01_Collider
  l0.Affiliation = "T_13"
  l0.Relationship = "Threat"
  l0 = self.box_TriggerMonitor_v2_1
  l1 = self.box_AISquadRelationshipController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|1224606778", "1224606778", "S11M040_DogThreatMonitor", "box_TriggerMonitor_v2_1.Enter", "box_AISquadRelationshipController_8.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_TriggerMonitor_v2_1_Leave()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Cage_01_Collider = l0.Collider
end
function export:f_box_TriggerMonitor_v2_1_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_1
  self.Cage_01_Collider = l0.Collider
end
function export:f_box_Compare_Boolean_v2_7_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|911191191", "911191191", "S11M040_DogThreatMonitor", "box_Compare_Boolean_v2_7.A_is_False", "box_SetBoolean_v2_6.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_7_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|1228957660", "1228957660", "S11M040_DogThreatMonitor", "box_Compare_Boolean_v2_7.A_is_True", "box_SetBoolean_v2_9.False", clone, l0)
  l0:False()
end
function export:f_box_Set_Entity_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Cage_01 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Trigger
  l0._graph = self
  l0._name = "box_Set_Entity_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|605811089"
  l0.Out = self.f_box_Set_Entity_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|242253090", "242253090", "S11M040_DogThreatMonitor", "box_Set_Entity_4.Out", "box_Set_Entity_3.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Set_Entity_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Cage_01_Trigger = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_11
  l0.Bool = self.Boolean
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|686072011", "686072011", "S11M040_DogThreatMonitor", "box_Set_Entity_3.Out", "box_SetBoolean_v2_11.FromBool", clone, l0)
  l0:FromBool()
end
function export:f_box_AISquadRelationshipController_8_RelationshipReset()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_1()
  l0 = self.box_AISquadRelationshipController_8
  l1 = self.box_TriggerMonitor_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|1034336477", "1034336477", "S11M040_DogThreatMonitor", "box_AISquadRelationshipController_8.RelationshipReset", "box_TriggerMonitor_v2_1.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadRelationshipController_2_RelationshipSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_10()
  l0 = self.box_AISquadRelationshipController_2
  l1 = self.box_TriggerMonitor_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|1479309537", "1479309537", "S11M040_DogThreatMonitor", "box_AISquadRelationshipController_2.RelationshipSet", "box_TriggerMonitor_v2_10.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_10_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_10
  self.Cage_01_Collider = l0.Collider
end
function export:f_box_TriggerMonitor_v2_10_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_10
  self.Cage_01_Collider = l0.Collider
  l0 = self.box_AISquadRelationshipController_2
  l0.Target = self.Cage_01_Collider
  l0.Affiliation = "T_13"
  l0.Relationship = "NotThreat"
  l0 = self.box_TriggerMonitor_v2_10
  l1 = self.box_AISquadRelationshipController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|649576852", "649576852", "S11M040_DogThreatMonitor", "box_TriggerMonitor_v2_10.Enter", "box_AISquadRelationshipController_2.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_TriggerMonitor_v2_10_Leave()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_10
  self.Cage_01_Collider = l0.Collider
end
function export:f_box_TriggerMonitor_v2_10_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_10
  self.Cage_01_Collider = l0.Collider
end
function export:f_box_SetBoolean_v2_11_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_11
  self.Cage_01_Boolean = l0.Target
end
function export:f_box_SetBoolean_v2_11_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_11
  self.Cage_01_Boolean = l0.Target
end
function export:f_box_SetBoolean_v2_11_SetFromBool()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_11
  self.Cage_01_Boolean = l0.Target
  self:OnEnter_box_Hackable_Monitor_5()
  l1 = self.box_Hackable_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|737557785", "737557785", "S11M040_DogThreatMonitor", "box_SetBoolean_v2_11.SetFromBool", "box_Hackable_Monitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_11_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_11
  self.Cage_01_Boolean = l0.Target
end
function export:f_box_SetBoolean_v2_11_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_11
  self.Cage_01_Boolean = l0.Target
end
function export:f_box_SetBoolean_v2_9_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.Cage_01_Boolean = l0.Target
end
function export:f_box_SetBoolean_v2_9_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.Cage_01_Boolean = l0.Target
  self:OnEnter_box_TriggerMonitor_v2_10()
  l1 = self.box_TriggerMonitor_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_DogThreatMonitor|89701216", "89701216", "S11M040_DogThreatMonitor", "box_SetBoolean_v2_9.SetFalse", "box_TriggerMonitor_v2_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_9_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.Cage_01_Boolean = l0.Target
end
function export:f_box_SetBoolean_v2_9_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.Cage_01_Boolean = l0.Target
end
function export:f_box_SetBoolean_v2_9_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.Cage_01_Boolean = l0.Target
end
function export:OnEnter_box_Hackable_Monitor_5()
  local l0
  l0 = self.box_Hackable_Monitor_5
  l0.HackableEntity = self.Cage_01
end
function export:OnEnter_box_TriggerMonitor_v2_1()
  local l0
  l0 = self.box_TriggerMonitor_v2_1
  l0.Trigger = self.Cage_01_Trigger
  l0.CheckNow = 1
end
function export:OnEnter_box_TriggerMonitor_v2_10()
  local l0
  l0 = self.box_TriggerMonitor_v2_10
  l0.Trigger = self.Cage_01_Trigger
  l0.CheckNow = 1
end
function export:Enabled()
end
function export:Disabled()
end
_compilerVersion = 4
