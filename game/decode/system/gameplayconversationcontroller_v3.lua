GameplayConversationControllerv3 = {}
function GameplayConversationControllerv3:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function GameplayConversationControllerv3:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.convoId = nil
end
function GameplayConversationControllerv3:ShutDown()
end
function GameplayConversationControllerv3:Start()
  self.User1 = self.User1 or GetLocalPlayerEntityId()
  if self.Users ~= nil then
    if LuaLibCore:VerifyDataInputEntityList(self.Users, "Users") then
      if self.RuleConfig == nil then
        self.convoId = CGameplayConversationManager_GetInstance():PlayConvoOnEntityListFromLUA(self, self.Conversation, "", self.Users, self.missionId)
      else
        self.convoId = CGameplayConversationManager_GetInstance():PlayConvoOnEntityListFromLUA(self, self.Conversation, self.RuleConfig, self.Users, self.missionId)
      end
    end
  elseif LuaLibCore:VerifyDataInputEntity(self.User1, "User1") and LuaLibCore:VerifyDataInputEntity(self.User2, "User2") then
    if self.RuleConfig == nil then
      self.convoId = CGameplayConversationManager_GetInstance():PlayConvoFromLUA(self, self.Conversation, "", self.User1, self.User2, self.missionId)
    else
      self.convoId = CGameplayConversationManager_GetInstance():PlayConvoFromLUA(self, self.Conversation, self.RuleConfig, self.User1, self.User2, self.missionId)
    end
  end
  self:Out()
end
function GameplayConversationControllerv3:Stop()
  if self.convoId ~= nil then
    CGameplayConversationManager_GetInstance():StopConvoFromLUA(self.convoId)
  end
  self:Out()
end
function GameplayConversationControllerv3:Pause()
  if self.convoId ~= nil then
    CGameplayConversationManager_GetInstance():PauseConvoFromLUA(self.convoId)
  end
  self:Out()
end
function GameplayConversationControllerv3:Resume()
  if self.convoId ~= nil then
    CGameplayConversationManager_GetInstance():ResumeConvoFromLUA(self.convoId)
  end
  self:Out()
end
function GameplayConversationControllerv3:OnConvoRequested()
end
function GameplayConversationControllerv3:OnConvoStarted()
  self:Started()
end
function GameplayConversationControllerv3:OnConvoPaused()
  self:Paused()
end
function GameplayConversationControllerv3:OnConvoResumed()
  self:Resumed()
end
function GameplayConversationControllerv3:OnConvoStopped()
  self:Stopped()
end
function GameplayConversationControllerv3:OnConvoFailed()
  self:Failed()
end
function GameplayConversationControllerv3:OnConvoLineSkip()
end
function GameplayConversationControllerv3:OnConvoFinished()
  self.convoId = nil
  self:Finished()
end
function GameplayConversationControllerv3:OnConvoNewLine()
end
function GameplayConversationControllerv3:OnConvoEndReached()
end
export = GameplayConversationControllerv3
GameplayConversationControllerv3 = nil
