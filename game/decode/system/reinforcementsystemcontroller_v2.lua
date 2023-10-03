ReinforcementSystemController = {}
function ReinforcementSystemController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibAI.lua")
end
function ReinforcementSystemController:Init(cbox)
end
function ReinforcementSystemController:ShutDown()
end
function ReinforcementSystemController:StartReinforcing()
  local target = self.Target or GetLocalPlayerEntityId()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  local reinforcementConfig = self.ReinforcementConfig or nil
  if self.DispatchCallId ~= nil then
    dispatchId = self.DispatchCallId
  end
  ReinforcementStartReinforcing_v5(target, affiliation, reinforcementConfig)
  self:Out()
  self:ReinforcingStarted()
end
function ReinforcementSystemController:StopReinforcing()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  local instantUnspawn = self.UnspawnOnStop or 0
  ReinforcementStopReinforcing_v3(affiliation, instantUnspawn)
  self:Out()
  self:ReinforcingStopped()
end
function ReinforcementSystemController:FixReinforcementLocation()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  local center = self.Center or GetLocalPlayerEntityId()
  ReinforcementFixLocation(affiliation, center)
  self:Out()
  self:ReinforcementLocationFixed()
end
function ReinforcementSystemController:ReleaseReinforcementLocation()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  ReinforcementReleaseLocation(affiliation)
  self:Out()
  self:ReinforcementLocationReleased()
end
function ReinforcementSystemController:AddScriptedAgents()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  local agentList = self.AgentList or {}
  ReinforcementAddScriptedAgent_v2(affiliation, agentList)
  self:Out()
  self:ScriptedAgentsAdded()
end
function ReinforcementSystemController:AdoptScriptedAgents()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  ReinforcementAdoptScriptedAgents(affiliation)
  self:Out()
  self:ScriptedAgentsAdopted()
end
export = ReinforcementSystemController
ReinforcementSystemController = nil
