GameplayInteractionController = {}
function GameplayInteractionController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function GameplayInteractionController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.interactionId = 0
end
function GameplayInteractionController:ShutDown()
end
function GameplayInteractionController:Start()
  if self:VerifyAndCombineData() then
    self.interactionId = CGameplayConversationManager_GetInstance():StartInteractionFromLUA(self, self.RuleConfig, self.userList, self.missionId)
    if self.interactionId ~= 0 then
      self:Started()
    end
  end
  self:Out()
end
function GameplayInteractionController:Stop()
  local interactionId = self.InInteractionId or self.interactionId
  CGameplayConversationManager_GetInstance():StopInteraction(interactionId)
  self:Out()
end
function GameplayInteractionController:OnInteractionStopped()
  self:Stopped()
end
function GameplayInteractionController:VerifyAndCombineData()
  self.userList = {}
  if self.Users ~= nil then
    if LuaLibCore:VerifyDataInputEntityList(self.Users, "Users") then
      for i, v in ipairs(self.Users) do
        table.insert(self.userList, self.Users[i])
      end
      return true
    end
  elseif LuaLibCore:VerifyDataInputEntity(self.User1, "User1") and LuaLibCore:VerifyDataInputEntity(self.User2, "User2") then
    table.insert(self.userList, self.User1)
    table.insert(self.userList, self.User2)
    return true
  end
  return false
end
export = GameplayInteractionController
GameplayInteractionController = nil
