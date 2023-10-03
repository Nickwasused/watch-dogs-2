AISquadRelationshipController = {}
function AISquadRelationshipController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibAI.lua")
end
function AISquadRelationshipController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function AISquadRelationshipController:ShutDown()
end
function AISquadRelationshipController:SetRelationship()
  local target = self.Target or GetLocalPlayerEntityId()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  local relationship = self:GetRelationshipID(self.Relationship)
  SetSquadRelationship(affiliation, relationship, target)
  self:RelationshipSet()
end
function AISquadRelationshipController:ResetRelationship()
  local target = self.Target or GetLocalPlayerEntityId()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  SetSquadRelationship(affiliation, 0, target)
  self:RelationshipReset()
end
function AISquadRelationshipController:GetRelationshipID(relationship)
  if relationship == "None" then
    return 0
  elseif relationship == "NotThreat" then
    return 1
  elseif relationship == "PotentialThreat" then
    return 2
  elseif relationship == "Threat" then
    return 4
  elseif relationship == "Friend" then
    return 8
  end
  return 0
end
export = AISquadRelationshipController
AISquadRelationshipController = nil
