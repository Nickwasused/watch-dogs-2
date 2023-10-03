AISquadStateController = {}
function AISquadStateController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibAI.lua")
end
function AISquadStateController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function AISquadStateController:ShutDown()
end
function AISquadStateController:SetSearchOverrideParams()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  local timeout = self.SearchOverrideParamTimeout or 0
  local radius = self.SearchOverrideParamEscapeRadius or 0
  SquadSetSearchOverrideParams(affiliation, timeout, radius)
  self:SearchOverrideParamsSet()
end
function AISquadStateController:ResetSearchOverrideParams()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  self.SearchOverrideParamTimeout = nil
  self.SearchOverrideParamEscapeRadius = nil
  SquadResetSearchOverrideParams(affiliation)
  self:SearchOverrideParamsReset()
end
function AISquadStateController:SetSquadBhvParams()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  local squadBhvParams = self.SquadBhvParams
  SquadSetBhvParams(affiliation, squadBhvParams)
  self:SquadBhvParamsSet()
end
function AISquadStateController:ClearSquadBhvParams()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  SquadClearBhvParams(affiliation)
  self:SquadBhvParamsCleared()
end
function AISquadStateController:SetInTargetedSearch()
  local target = self.Target or GetLocalPlayerEntityId()
  local position = self.Position or GetLocalPlayerEntityId()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  local isThreat = self.IsThreat or 0
  local timeout = self.SearchOverrideParamTimeout or 0
  local radius = self.SearchOverrideParamEscapeRadius or 0
  local dispatchId = ""
  if self.DispatchCallId ~= nil then
    dispatchId = self.DispatchCallId
  end
  SquadTryToCreateTargetedSearch_v3(affiliation, target, position, isThreat, timeout, radius, dispatchId)
  self:TargetedSearchSet()
end
function AISquadStateController:SetInUntargetedSearch()
  local target = self.Target or GetLocalPlayerEntityId()
  local position = self.Position or GetLocalPlayerEntityId()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  local timeout = self.SearchOverrideParamTimeout or 0
  local radius = self.SearchOverrideParamEscapeRadius or 0
  SquadTryToCreateUntargetedSearch_v2(affiliation, target, position, timeout, radius)
  self:UntargetedSearchSet()
end
function AISquadStateController:SetInCombat()
  local target = self.Target or GetLocalPlayerEntityId()
  local position = self.Position or GetLocalPlayerEntityId()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  SquadTryToCreateCombat(affiliation, target, position)
  self:CombatSet()
end
function AISquadStateController:SetInWander()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  SetSquadSupportWanderState(affiliation, 1)
  self:WanderSet()
end
function AISquadStateController:SetInAware()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  SetSquadSupportWanderState(affiliation, 0)
  self:AwareSet()
end
function AISquadStateController:ForceVanish()
  local target = self.Target or GetLocalPlayerEntityId()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  SquadForceVanish(affiliation, target)
  self:VanishSet()
end
function AISquadStateController:RemoveSquad()
  RemoveSquad(self.SquadName)
  self:SquadRemoved()
end
export = AISquadStateController
AISquadStateController = nil
