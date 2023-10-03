ConversationMonitor = {}
function ConversationMonitor:Create(cbox)
end
function ConversationMonitor:Init(cbox)
end
function ConversationMonitor:ShutDown()
  self:UnregisterCallbacks()
end
function ConversationMonitor:Enable()
  self.conversationCallbackId = CScriptCallbackSystem_GetInstance():RegisterNonRepeatableConversationPlayedCallback(self, "Event_OnNonRepeatableConversationPlayed", self.Conversation)
  self:Enabled()
end
function ConversationMonitor:Disable()
  self:UnregisterCallbacks()
  self:Disabled()
end
function ConversationMonitor:GetPlayState()
  if IsNonRepeatableConversationPlayed(self.Conversation) == 1 then
    self:WasPlayed()
  else
    self:WasNotPlayed()
  end
end
function ConversationMonitor:Event_OnNonRepeatableConversationPlayed()
  self:OnFinished()
end
function ConversationMonitor:UnregisterCallbacks()
  if self.conversationCallbackId ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("Event_OnNonRepeatableConversationPlayed", self.conversationCallbackId)
    self.conversationCallbackId = nil
  end
end
export = ConversationMonitor
ConversationMonitor = nil
