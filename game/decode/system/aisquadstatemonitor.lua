AISquadStateMonitor = {}
function AISquadStateMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibAI.lua")
end
function AISquadStateMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function AISquadStateMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function AISquadStateMonitor:Enable()
  local target = self.Target or GetLocalPlayerEntityId()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  local instance = CScriptCallbackSystem_GetInstance()
  local checknow = self.CheckStateNow or 0
  if self.onSquadEventArrest == nil then
    self.onSquadEventArrest = instance:RegisterMissionNoEntityCallback("DominoSquadMonitorArrestEvent", self, "OnSquadEventArrest", self.missionId)
  end
  if self.onSquadEventCombat == nil then
    self.onSquadEventCombat = instance:RegisterMissionNoEntityCallback("DominoSquadMonitorCombatEvent", self, "OnSquadEventCombat", self.missionId)
  end
  if self.onSquadEventSearch == nil then
    self.onSquadEventSearch = instance:RegisterMissionNoEntityCallback("DominoSquadMonitorSearchEvent", self, "OnSquadEventSearch", self.missionId)
  end
  if self.onSquadEventVanish == nil then
    self.onSquadEventVanish = instance:RegisterMissionNoEntityCallback("DominoSquadMonitorVanishEvent", self, "OnSquadEventVanish", self.missionId)
  end
  if checknow == 1 then
    local squadState = SquadGetState(affiliation, target)
    if squadState == 8 then
      self:ArrestState()
    elseif squadState == 16 then
      self:CombatState()
    elseif squadState == 64 then
      self:SearchState()
    elseif squadState == 128 then
      self:VanishState()
    else
      self:None()
    end
  end
  self:Enabled()
end
function AISquadStateMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function AISquadStateMonitor:UnregisterCallback()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.onSquadEventArrest ~= nil then
    instance:RemoveNoEntityCallback("DominoSquadMonitorArrestEvent", self.onSquadEventArrest)
    self.onSquadEventArrest = nil
  end
  if self.onSquadEventCombat ~= nil then
    instance:RemoveNoEntityCallback("DominoSquadMonitorCombatEvent", self.onSquadEventCombat)
    self.onSquadEventCombat = nil
  end
  if self.onSquadEventSearch ~= nil then
    instance:RemoveNoEntityCallback("DominoSquadMonitorSearchEvent", self.onSquadEventSearch)
    self.onSquadEventSearch = nil
  end
  if self.onSquadEventVanish ~= nil then
    instance:RemoveNoEntityCallback("DominoSquadMonitorVanishEvent", self.onSquadEventVanish)
    self.onSquadEventVanish = nil
  end
end
function AISquadStateMonitor:OnSquadEventArrest(affiliation, targetId)
  local target = self.Target or GetLocalPlayerEntityId()
  if targetId == target and affiliation == LuaLibAI:GetAffiliationID(self.Affiliation) then
    self:ArrestState()
  end
  if affiliation == LuaLibAI:GetAffiliationID(self.Affiliation) then
    self.ArrestedTarget = targetId
    self:ArrestStateAnyTarget()
  end
end
function AISquadStateMonitor:OnSquadEventCombat(affiliation, targetId)
  local target = self.Target or GetLocalPlayerEntityId()
  if targetId == target and affiliation == LuaLibAI:GetAffiliationID(self.Affiliation) then
    self:CombatState()
  end
  if affiliation == LuaLibAI:GetAffiliationID(self.Affiliation) then
    self:CombatStateAnyTarget()
  end
end
function AISquadStateMonitor:OnSquadEventSearch(affiliation, targetId)
  local target = self.Target or GetLocalPlayerEntityId()
  if targetId == target and affiliation == LuaLibAI:GetAffiliationID(self.Affiliation) then
    self:SearchState()
  end
  if affiliation == LuaLibAI:GetAffiliationID(self.Affiliation) then
    self:SearchStateAnyTarget()
  end
end
function AISquadStateMonitor:OnSquadEventVanish(affiliation, targetId)
  local target = self.Target or GetLocalPlayerEntityId()
  if targetId == target and affiliation == LuaLibAI:GetAffiliationID(self.Affiliation) then
    self:VanishState()
  end
end
export = AISquadStateMonitor
AISquadStateMonitor = nil
