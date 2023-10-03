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
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.Cage_01 = nil
  self.Cage_01_Trigger = nil
  self.Cage_01_Collider = nil
  self.Cage_01_Boolean = 0
  self[5] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = self.f_5_Enabled
  l0.Disabled = self.f_5_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_5_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[6] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.SetTrue = self.f_6_SetTrue
  l0.SetFalse = self.f_6_SetFalse
  l0.Toggled = self.f_6_Toggled
  l0.SetFromBool = self.f_6_SetFromBool
  self[1] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_1_Enter
  l0.Leave = self.f_1_Leave
  l0.Use = self.f_1_Use
  self[8] = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self[8]
  l0._graph = self
  l0.RelationshipSet = DummyFunction
  l0.RelationshipReset = self.f_8_RelationshipReset
  self[2] = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self[2]
  l0._graph = self
  l0.RelationshipSet = self.f_2_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self[10] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = self.f_10_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_10_Enter
  l0.Leave = self.f_10_Leave
  l0.Use = self.f_10_Use
  self[11] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.SetTrue = self.f_11_SetTrue
  l0.SetFalse = self.f_11_SetFalse
  l0.Toggled = self.f_11_Toggled
  l0.SetFromBool = self.f_11_SetFromBool
  self[9] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.SetTrue = self.f_9_SetTrue
  l0.SetFalse = self.f_9_SetFalse
  l0.Toggled = self.f_9_Toggled
  l0.SetFromBool = self.f_9_SetFromBool
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
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Cage
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:FromEntity()
end
function export:f_5_Disabled()
  self = self._graph
  self:Disabled()
end
function export:f_5_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_5_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Cage_01_Boolean
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_7_A_is_True
  l0.A_is_False = self.f_7_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[6]
  self.Cage_01_Boolean = l0.Target
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_6_SetFalse()
  local l0
  self = self._graph
  l0 = self[6]
  self.Cage_01_Boolean = l0.Target
end
function export:f_6_SetFromBool()
  local l0
  self = self._graph
  l0 = self[6]
  self.Cage_01_Boolean = l0.Target
end
function export:f_6_SetTrue()
  local l0
  self = self._graph
  l0 = self[6]
  self.Cage_01_Boolean = l0.Target
end
function export:f_6_Toggled()
  local l0
  self = self._graph
  l0 = self[6]
  self.Cage_01_Boolean = l0.Target
end
function export:f_1_Enabled()
  local l0
  self = self._graph
  l0 = self[1]
  self.Cage_01_Collider = l0.Collider
end
function export:f_1_Enter()
  local l0
  self = self._graph
  l0 = self[1]
  self.Cage_01_Collider = l0.Collider
  l0 = self[8]
  l0.Target = self.Cage_01_Collider
  l0.Affiliation = "T_13"
  l0.Relationship = "Threat"
  l0:SetRelationship()
end
function export:f_1_Leave()
  local l0
  self = self._graph
  l0 = self[1]
  self.Cage_01_Collider = l0.Collider
end
function export:f_1_Use()
  local l0
  self = self._graph
  l0 = self[1]
  self.Cage_01_Collider = l0.Collider
end
function export:f_7_A_is_False()
  local l0
  self = self._graph
  l0 = self[6]
  l0:True()
end
function export:f_7_A_is_True()
  local l0
  self = self._graph
  l0 = self[9]
  l0:False()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Cage_01 = l0.Target
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Trigger
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:FromEntity()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Cage_01_Trigger = l0.Target
  l0 = self[11]
  l0.Bool = self.Boolean
  l0:FromBool()
end
function export:f_8_RelationshipReset()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_2_RelationshipSet()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_10_Enabled()
  local l0
  self = self._graph
  l0 = self[10]
  self.Cage_01_Collider = l0.Collider
end
function export:f_10_Enter()
  local l0
  self = self._graph
  l0 = self[10]
  self.Cage_01_Collider = l0.Collider
  l0 = self[2]
  l0.Target = self.Cage_01_Collider
  l0.Affiliation = "T_13"
  l0.Relationship = "NotThreat"
  l0:SetRelationship()
end
function export:f_10_Leave()
  local l0
  self = self._graph
  l0 = self[10]
  self.Cage_01_Collider = l0.Collider
end
function export:f_10_Use()
  local l0
  self = self._graph
  l0 = self[10]
  self.Cage_01_Collider = l0.Collider
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[11]
  self.Cage_01_Boolean = l0.Target
end
function export:f_11_SetFalse()
  local l0
  self = self._graph
  l0 = self[11]
  self.Cage_01_Boolean = l0.Target
end
function export:f_11_SetFromBool()
  local l0
  self = self._graph
  l0 = self[11]
  self.Cage_01_Boolean = l0.Target
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_11_SetTrue()
  local l0
  self = self._graph
  l0 = self[11]
  self.Cage_01_Boolean = l0.Target
end
function export:f_11_Toggled()
  local l0
  self = self._graph
  l0 = self[11]
  self.Cage_01_Boolean = l0.Target
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[9]
  self.Cage_01_Boolean = l0.Target
end
function export:f_9_SetFalse()
  local l0
  self = self._graph
  l0 = self[9]
  self.Cage_01_Boolean = l0.Target
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_9_SetFromBool()
  local l0
  self = self._graph
  l0 = self[9]
  self.Cage_01_Boolean = l0.Target
end
function export:f_9_SetTrue()
  local l0
  self = self._graph
  l0 = self[9]
  self.Cage_01_Boolean = l0.Target
end
function export:f_9_Toggled()
  local l0
  self = self._graph
  l0 = self[9]
  self.Cage_01_Boolean = l0.Target
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.HackableEntity = self.Cage_01
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Trigger = self.Cage_01_Trigger
  l0.CheckNow = 1
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Trigger = self.Cage_01_Trigger
  l0.CheckNow = 1
end
function export:Enabled()
end
function export:Disabled()
end
_compilerVersion = 4
