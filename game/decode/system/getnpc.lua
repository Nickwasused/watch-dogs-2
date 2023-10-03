GetNPC = {}
function GetNPC:Create(cbox)
  self.AgentType = "Human"
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibAI.lua")
end
function GetNPC:Init(cbox)
end
function GetNPC:ShutDown()
end
function GetNPC:GetAll()
  local agentType = self.AgentType or "Human"
  local group = self.Group or ""
  self.NPCList = CAIAgentManager_GetInstance():GetAIAgentsOfGroupFromLUA_v2(agentType, LuaLibAI:GetAffiliationID(self.Affiliation, 0), group, 1, 0)
  self:GotNPCList()
end
function GetNPC:GetAllAlive()
  local agentType = self.AgentType or "Human"
  local group = self.Group or ""
  self.NPCList = CAIAgentManager_GetInstance():GetAIAgentsOfGroupFromLUA_v2(agentType, LuaLibAI:GetAffiliationID(self.Affiliation, 0), group, 0, 0)
  self:GotNPCList()
end
function GetNPC:GetEnemies()
  local agentType = self.AgentType or "Human"
  local group = self.Group or ""
  self.NPCList = CAIAgentManager_GetInstance():GetAIAgentsOfGroupFromLUA_v2(agentType, LuaLibAI:GetAffiliationID(self.Affiliation, 0), group, 1, 1)
  self:GotNPCList()
end
function GetNPC:GetEnemiesAlive()
  local agentType = self.AgentType or "Human"
  local group = self.Group or ""
  self.NPCList = CAIAgentManager_GetInstance():GetAIAgentsOfGroupFromLUA_v2(agentType, LuaLibAI:GetAffiliationID(self.Affiliation, 0), group, 0, 1)
  self:GotNPCList()
end
function GetNPC:GetNotEnemies()
  local agentType = self.AgentType or "Human"
  local group = self.Group or ""
  self.NPCList = CAIAgentManager_GetInstance():GetAIAgentsOfGroupFromLUA_v2(agentType, LuaLibAI:GetAffiliationID(self.Affiliation, 0), group, 1, 2)
  self:GotNPCList()
end
function GetNPC:GetNotEnemiesAlive()
  local agentType = self.AgentType or "Human"
  local group = self.Group or ""
  self.NPCList = CAIAgentManager_GetInstance_v2():GetAIAgentsOfGroupFromLUA_v2(agentType, LuaLibAI:GetAffiliationID(self.Affiliation, 0), group, 0, 2)
  self:GotNPCList()
end
export = GetNPC
GetNPC = nil
